#!/usr/bin/env bash
#
# mosgarage VPS bootstrap — Ubuntu 24.04
# Target: 169.58.221.239 (mosgarage.xyz)
#
# Hardened security + auto backup + easy WSL/VSCode/Cursor/JetBrains connect
# + Claude Code / Qwen Code / Cursor CLI + colorful bashrc & MOTD.
#
# USAGE:
#   1. Edit the CONFIG block below (SSH keys are the one thing you MUST fill in).
#   2. scp this file to the box, then: sudo bash vps-setup.sh
#   3. Run stages selectively with: sudo bash vps-setup.sh --only harden_ssh,setup_firewall
#      or skip stages with:          sudo bash vps-setup.sh --skip install_dotnet
#
# SAFE BY DESIGN: every stage is idempotent (safe to re-run), and SSH hardening
# will refuse to disable password auth until it verifies at least one user has
# a real public key installed — so you should never get locked out.

set -euo pipefail
IFS=$'\n\t'

# ============================== CONFIG =====================================
# --- Networking / identity ---
SERVER_IP="169.58.221.239"
DOMAIN="mosgarage.xyz"
TIMEZONE="Etc/UTC"
HOSTNAME_NEW="mosgarage-core"

# --- SSH ---
NEW_SSH_PORT=2222                 # set to 22 to keep default
RESTRICT_SSH_TO_TAILSCALE=false   # true = SSH only reachable over tailscale0 (recommended once Tailscale is confirmed working)
MAX_AUTH_TRIES=3

# --- Users to create (sudo + docker group) ---
# Paste your REAL public keys here (ssh-ed25519 / ssh-rsa ...). One or more
# per user, space them with a newline inside the quotes for multiple keys.
declare -A USER_KEYS=(
  [devops]="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAEx/Aw+t1fNUJ2Wwutpgoyry2ZZ3flm6bHv48ii+U7A"
  [mosgarage]="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAEx/Aw+t1fNUJ2Wwutpgoyry2ZZ3flm6bHv48ii+U7A"
  [ecampusdev]="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAEx/Aw+t1fNUJ2Wwutpgoyry2ZZ3flm6bHv48ii+U7A"
)

# --- Tailscale (leave blank to auth interactively via browser link) ---
TAILSCALE_AUTHKEY=""

# --- Backup (restic) ---
# Local path by default. Point at sftp:// s3:// b2:// etc. for offsite —
# restic supports these natively without extra tooling.
RESTIC_REPOSITORY="/var/backups/restic-repo"
RESTIC_PASSWORD="Password123."
BACKUP_PATHS=("/home" "/etc" "/srv" "/var/www")
BACKUP_TIME="03:30"               # daily, systemd OnCalendar time
BACKUP_KEEP_DAILY=7
BACKUP_KEEP_WEEKLY=4
BACKUP_KEEP_MONTHLY=6
NOTIFY_WEBHOOK=""                 # optional Slack/Discord webhook URL for backup alerts

# --- Toolchain ---
INSTALL_DOCKER=true
INSTALL_NODE=true
NODE_MAJOR=22
INSTALL_DOTNET=true
DOTNET_CHANNEL=8.0
INSTALL_CODE_SERVER=false         # you already ship mosgarage/code-server — leave false unless you want a stock instance too

# ============================================================================

STAGES=(preflight system_update set_hostname_timezone create_users harden_ssh
        setup_firewall setup_fail2ban setup_unattended_upgrades harden_sysctl
        install_essentials install_docker install_node install_dotnet
        install_tailscale configure_git install_ai_clis vscode_remote_notes
        install_code_server_opt setup_swap setup_journald setup_autobackup
        setup_bashrc_motd final_summary)

ONLY_STAGES=()
SKIP_STAGES=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --only) IFS=',' read -r -a ONLY_STAGES <<< "$2"; shift 2 ;;
    --skip) IFS=',' read -r -a SKIP_STAGES <<< "$2"; shift 2 ;;
    *) echo "Unknown arg: $1"; exit 1 ;;
  esac
done

# ------------------------------- helpers ------------------------------------
C_G='\033[0;32m'; C_Y='\033[1;33m'; C_R='\033[0;31m'; C_B='\033[0;34m'; C_N='\033[0m'
log()  { echo -e "${C_G}[+]${C_N} $*"; }
warn() { echo -e "${C_Y}[!]${C_N} $*"; }
err()  { echo -e "${C_R}[x]${C_N} $*" >&2; }
have() { command -v "$1" &>/dev/null; }

should_run() {
  local stage="$1"
  if [[ ${#ONLY_STAGES[@]} -gt 0 ]]; then
    [[ " ${ONLY_STAGES[*]} " == *" $stage "* ]] || return 1
  fi
  if [[ ${#SKIP_STAGES[@]} -gt 0 ]]; then
    [[ " ${SKIP_STAGES[*]} " == *" $stage "* ]] && return 1
  fi
  return 0
}

run_stage() {
  local stage="$1"
  should_run "$stage" || { warn "skipping $stage"; return 0; }
  log "=== $stage ==="
  "$stage"
}

# ------------------------------- stages -------------------------------------

preflight() {
  [[ $EUID -eq 0 ]] || { err "run as root (sudo bash vps-setup.sh)"; exit 1; }
  . /etc/os-release
  if [[ "${VERSION_ID:-}" != "24.04" ]]; then
    warn "expected Ubuntu 24.04, found ${PRETTY_NAME:-unknown} — continuing anyway"
  fi
  mkdir -p /var/log/mosgarage-setup
  exec > >(tee -a /var/log/mosgarage-setup/setup.log) 2>&1
}

system_update() {
  export DEBIAN_FRONTEND=noninteractive
  apt-get update -y
  apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
  apt-get autoremove -y
}

set_hostname_timezone() {
  timedatectl set-timezone "$TIMEZONE" || true
  if [[ "$(hostnamectl --static)" != "$HOSTNAME_NEW" ]]; then
    hostnamectl set-hostname "$HOSTNAME_NEW"
    grep -q "$HOSTNAME_NEW" /etc/hosts || echo "127.0.1.1 $HOSTNAME_NEW" >> /etc/hosts
  fi
}

create_users() {
  for u in "${!USER_KEYS[@]}"; do
    if ! id "$u" &>/dev/null; then
      useradd -m -s /bin/bash -G sudo "$u"
      log "created user $u"
      passwd -l "$u"   # password login locked; SSH key only
    fi
    install -d -m 700 -o "$u" -g "$u" "/home/$u/.ssh"
    local keyfile="/home/$u/.ssh/authorized_keys"
    if [[ -n "${USER_KEYS[$u]}" && "${USER_KEYS[$u]}" != *"REPLACE_ME"* ]]; then
      printf '%s\n' "${USER_KEYS[$u]}" > "$keyfile"
      chmod 600 "$keyfile"; chown "$u:$u" "$keyfile"
    else
      warn "no real public key set for '$u' yet — edit USER_KEYS and re-run create_users"
      touch "$keyfile"; chmod 600 "$keyfile"; chown "$u:$u" "$keyfile"
    fi
  done
  # docker group is created by install_docker; add membership there if present
}

any_user_has_key() {
  for u in "${!USER_KEYS[@]}"; do
    [[ -s "/home/$u/.ssh/authorized_keys" ]] && return 0
  done
  return 1
}

harden_ssh() {
  install -d /etc/ssh/sshd_config.d
  local allow_users
  allow_users="$(printf '%s ' "${!USER_KEYS[@]}")"

  cat > /etc/ssh/sshd_config.d/99-mosgarage-hardening.conf <<EOF
Port ${NEW_SSH_PORT}
Protocol 2
PermitRootLogin no
MaxAuthTries ${MAX_AUTH_TRIES}
LoginGraceTime 20
ClientAliveInterval 300
ClientAliveCountMax 2
X11Forwarding no
AllowUsers ${allow_users}
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys
KbdInteractiveAuthentication no
EOF

  if any_user_has_key; then
    echo "PasswordAuthentication no" >> /etc/ssh/sshd_config.d/99-mosgarage-hardening.conf
    log "password auth disabled — pubkey confirmed present for at least one user"
  else
    warn "no authorized_keys populated yet — leaving password auth ON to avoid lockout. Re-run after adding keys."
  fi

  if sshd -t; then
    systemctl reload ssh
    log "sshd reloaded on port ${NEW_SSH_PORT}. TEST A NEW CONNECTION IN A SEPARATE TERMINAL before closing this session."
  else
    err "sshd config test FAILED — reverting hardening file"
    rm -f /etc/ssh/sshd_config.d/99-mosgarage-hardening.conf
    exit 1
  fi
}

setup_firewall() {
  apt-get install -y ufw
  ufw --force reset
  ufw default deny incoming
  ufw default allow outgoing

  if $RESTRICT_SSH_TO_TAILSCALE; then
    ufw allow in on tailscale0 to any port "${NEW_SSH_PORT}" proto tcp
    warn "SSH restricted to Tailscale interface only — confirm tailscale0 is up before disconnecting your normal session."
  else
    ufw limit "${NEW_SSH_PORT}/tcp"    # rate-limited against brute force
  fi

  ufw allow 80/tcp
  ufw allow 443/tcp
  ufw allow in on tailscale0 || true
  ufw --force enable
}

setup_fail2ban() {
  apt-get install -y fail2ban
  cat > /etc/fail2ban/jail.d/mosgarage.local <<EOF
[sshd]
enabled = true
port = ${NEW_SSH_PORT}
maxretry = 4
bantime = 1h
findtime = 10m
EOF
  systemctl enable --now fail2ban
  systemctl restart fail2ban
}

setup_unattended_upgrades() {
  apt-get install -y unattended-upgrades apt-listchanges
  dpkg-reconfigure -f noninteractive unattended-upgrades
  cat > /etc/apt/apt.conf.d/52mosgarage-auto-upgrades <<'EOF'
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::Unattended-Upgrade "1";
Unattended-Upgrade::Remove-Unused-Dependencies "true";
Unattended-Upgrade::Automatic-Reboot "false";
EOF
}

harden_sysctl() {
  # NOTE: net.ipv4.ip_forward is intentionally left alone — Docker needs it.
  cat > /etc/sysctl.d/99-mosgarage-hardening.conf <<'EOF'
net.ipv4.conf.all.rp_filter = 1
net.ipv4.conf.default.rp_filter = 1
net.ipv4.icmp_echo_ignore_broadcasts = 1
net.ipv4.conf.all.accept_source_route = 0
net.ipv4.conf.all.accept_redirects = 0
net.ipv4.conf.all.send_redirects = 0
net.ipv4.tcp_syncookies = 1
kernel.dmesg_restrict = 1
fs.protected_hardlinks = 1
fs.protected_symlinks = 1
EOF
  sysctl --system
}

install_essentials() {
  apt-get install -y git curl wget build-essential unzip jq tmux htop ncdu tree \
    ripgrep fzf bat ca-certificates gnupg lsb-release software-properties-common \
    fastfetch || apt-get install -y neofetch
}

install_docker() {
  $INSTALL_DOCKER || return 0
  if ! have docker; then
    install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    chmod a+r /etc/apt/keyrings/docker.asc
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
      > /etc/apt/sources.list.d/docker.list
    apt-get update -y
    apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  fi
  systemctl enable --now docker
  for u in "${!USER_KEYS[@]}"; do usermod -aG docker "$u" || true; done
  # unattended image cleanup + watchtower is already part of your stack per prior infra notes
}

install_node() {
  $INSTALL_NODE || return 0
  if ! have node; then
    curl -fsSL "https://deb.nodesource.com/setup_${NODE_MAJOR}.x" | bash -
    apt-get install -y nodejs
  fi
}

install_dotnet() {
  $INSTALL_DOTNET || return 0
  if ! have dotnet; then
    apt-get install -y dotnet-sdk-"${DOTNET_CHANNEL}" || {
      wget -q https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O /tmp/ms-prod.deb
      dpkg -i /tmp/ms-prod.deb
      apt-get update -y
      apt-get install -y dotnet-sdk-"${DOTNET_CHANNEL}"
    }
  fi
}

install_tailscale() {
  if ! have tailscale; then
    curl -fsSL https://tailscale.com/install.sh | sh
  fi
  systemctl enable --now tailscaled
  if [[ -n "$TAILSCALE_AUTHKEY" ]]; then
    tailscale up --authkey="$TAILSCALE_AUTHKEY" --ssh
  else
    warn "no TAILSCALE_AUTHKEY set — run 'tailscale up --ssh' manually and follow the browser login link"
  fi
}

configure_git() {
  for u in "${!USER_KEYS[@]}"; do
    su - "$u" -c '
      git config --global init.defaultBranch main
      git config --global pull.rebase false
      git config --global credential.helper "cache --timeout=43200"
      git config --global core.editor "vim"
      git config --global alias.st status
      git config --global alias.co checkout
      git config --global alias.br branch
      git config --global alias.lg "log --oneline --graph --decorate --all"
    ' 2>/dev/null || true
  done
}

install_ai_clis() {
  have node || { warn "node missing, skipping AI CLI installs"; return 0; }
  npm install -g @anthropic-ai/claude-code @qwen-code/qwen-code@latest 2>&1 | tail -n 5

  for u in "${!USER_KEYS[@]}"; do
    su - "$u" -c 'curl https://cursor.com/install -fsS | bash' 2>&1 | tail -n 3 || true
    su - "$u" -c 'grep -q ".local/bin" ~/.bashrc || echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> ~/.bashrc'
  done
  log "installed: claude (Claude Code), qwen (Qwen Code), cursor-agent (Cursor CLI, per-user)"
}

vscode_remote_notes() {
  # VS Code / Cursor Remote-SSH and JetBrains Gateway need nothing special on
  # Ubuntu 24.04 beyond a working sshd — the client downloads its own server
  # component on first connect. We just print the config block users need.
  cat > /root/ssh-config-snippet.txt <<EOF
# Paste into ~/.ssh/config on your Windows host and/or inside WSL
# (use the Tailscale IP instead of ${SERVER_IP} if RESTRICT_SSH_TO_TAILSCALE=true)
Host mosgarage-vps
    HostName ${SERVER_IP}
    Port ${NEW_SSH_PORT}
    User devops
    IdentityFile ~/.ssh/id_ed25519
    ForwardAgent yes
EOF
  log "SSH config snippet written to /root/ssh-config-snippet.txt (for VS Code / Cursor / JetBrains Remote-SSH and WSL)"
}

install_code_server_opt() {
  $INSTALL_CODE_SERVER || return 0
  have code-server || curl -fsSL https://code-server.dev/install.sh | sh
  systemctl enable --now code-server@root || true
}

setup_swap() {
  if ! swapon --show | grep -q .; then
    fallocate -l 2G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    grep -q '/swapfile' /etc/fstab || echo '/swapfile none swap sw 0 0' >> /etc/fstab
    sysctl vm.swappiness=10
    echo 'vm.swappiness=10' >> /etc/sysctl.d/99-mosgarage-hardening.conf
  fi
}

setup_journald() {
  mkdir -p /etc/systemd/journald.conf.d
  cat > /etc/systemd/journald.conf.d/99-mosgarage.conf <<'EOF'
[Journal]
SystemMaxUse=500M
MaxRetentionSec=30day
EOF
  systemctl restart systemd-journald
}

setup_autobackup() {
  apt-get install -y restic
  mkdir -p "$(dirname "$RESTIC_REPOSITORY")" 2>/dev/null || true
  install -d -m 700 /etc/mosgarage
  cat > /etc/mosgarage/restic.env <<EOF
export RESTIC_REPOSITORY="${RESTIC_REPOSITORY}"
export RESTIC_PASSWORD="${RESTIC_PASSWORD}"
EOF
  chmod 600 /etc/mosgarage/restic.env

  # shellcheck disable=SC1091
  source /etc/mosgarage/restic.env
  if ! restic snapshots &>/dev/null; then
    restic init
  fi

  cat > /usr/local/bin/mosgarage-backup.sh <<EOF
#!/usr/bin/env bash
set -euo pipefail
source /etc/mosgarage/restic.env
LOG=/var/log/mosgarage-setup/backup.log
{
  echo "=== \$(date -Is) backup start ==="
  restic backup ${BACKUP_PATHS[*]} --exclude-caches
  restic forget --keep-daily ${BACKUP_KEEP_DAILY} --keep-weekly ${BACKUP_KEEP_WEEKLY} --keep-monthly ${BACKUP_KEEP_MONTHLY} --prune
  restic check
  echo "=== \$(date -Is) backup ok ==="
} >> "\$LOG" 2>&1 || {
  echo "=== \$(date -Is) backup FAILED ===" >> "\$LOG"
  if [[ -n "${NOTIFY_WEBHOOK}" ]]; then
    curl -fsS -X POST -H 'Content-Type: application/json' \
      -d "{\"content\":\"⚠️ mosgarage backup FAILED on \$(hostname) at \$(date -Is)\"}" \
      "${NOTIFY_WEBHOOK}" || true
  fi
  exit 1
}
EOF
  chmod 700 /usr/local/bin/mosgarage-backup.sh

  cat > /etc/systemd/system/mosgarage-backup.service <<'EOF'
[Unit]
Description=mosgarage restic backup
[Service]
Type=oneshot
ExecStart=/usr/local/bin/mosgarage-backup.sh
EOF

  cat > /etc/systemd/system/mosgarage-backup.timer <<EOF
[Unit]
Description=Daily mosgarage backup
[Timer]
OnCalendar=*-*-* ${BACKUP_TIME}:00
Persistent=true
[Install]
WantedBy=timers.target
EOF

  systemctl daemon-reload
  systemctl enable --now mosgarage-backup.timer
  log "restic repo at ${RESTIC_REPOSITORY}; daily backup timer installed (${BACKUP_TIME} UTC)"
}

setup_bashrc_motd() {
  # --- shared bashrc additions for every managed user ---
  cat > /etc/profile.d/mosgarage-bashrc.sh <<'BASHEOF'
# mosgarage shell setup
export EDITOR=vim
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend checkwinsize 2>/dev/null || true

git_branch() {
  git branch 2>/dev/null | sed -n '/\* /s///p'
}

if [[ $- == *i* ]]; then
  RESET='\[\033[0m\]'; BOLD='\[\033[1m\]'
  CYAN='\[\033[36m\]'; GREEN='\[\033[32m\]'; YELLOW='\[\033[33m\]'; BLUE='\[\033[34m\]'
  PS1="${BOLD}${GREEN}\u${RESET}@${CYAN}\h${RESET}:${BLUE}\w${RESET} ${YELLOW}\$(git_branch)${RESET}\n\$ "

  alias ll='ls -alFh --color=auto'
  alias la='ls -A --color=auto'
  alias gs='git status'
  alias gc='git commit -m'
  alias gp='git push'
  alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
  alias dc='docker compose'
  alias update='sudo apt update && sudo apt upgrade -y'
  alias myip='curl -s ifconfig.me'
fi
BASHEOF
  chmod 644 /etc/profile.d/mosgarage-bashrc.sh

  # Starship prompt (optional flair, non-destructive: profile.d PS1 above still
  # works for anyone who doesn't have starship on PATH)
  if ! have starship; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y || warn "starship install skipped"
  fi
  if have starship; then
    cat >> /etc/profile.d/mosgarage-bashrc.sh <<'BASHEOF'
if command -v starship &>/dev/null; then
  eval "$(starship init bash)"
fi
BASHEOF
  fi

  # --- MOTD ---
  chmod -x /etc/update-motd.d/* 2>/dev/null || true   # quiet Ubuntu's stock ones
  cat > /etc/update-motd.d/50-mosgarage <<'MOTDEOF'
#!/usr/bin/env bash
C_C='\033[36m'; C_G='\033[32m'; C_Y='\033[33m'; C_N='\033[0m'; C_B='\033[1m'

echo -e "${C_C}${C_B}"
echo '   __  __  ____  ____   ___    _    ____      _    ____ _____ '
echo '  |  \/  |/ __ \/ ___| / _ \  / \  |  _ \    / \  / ___| ____|'
echo '  | |\/| | |  | \___ \| | | |/ _ \ | |_) |  / _ \| |  _|  _|  '
echo '  | |  | | |__| |___) | |_| / ___ \|  _ <  / ___ \ |_| | |___ '
echo '  |_|  |_|\____/|____/ \___/_/   \_\_| \_\/_/   \_\____|_____|'
echo -e "${C_N}"
echo -e "${C_G}Host:${C_N} $(hostname)   ${C_G}IP:${C_N} $(hostname -I | awk '{print $1}')   ${C_G}Kernel:${C_N} $(uname -r)"
echo -e "${C_G}Uptime:${C_N} $(uptime -p)   ${C_G}Load:${C_N} $(cut -d ' ' -f1-3 /proc/loadavg)"
echo -e "${C_G}Mem:${C_N}  $(free -h | awk '/^Mem/ {print $3"/"$2}')   ${C_G}Disk /:${C_N} $(df -h / | awk 'NR==2{print $3"/"$2" ("$5")"}')"
if command -v docker &>/dev/null; then
  echo -e "${C_G}Docker:${C_N} $(docker ps -q | wc -l) containers running"
fi
if command -v tailscale &>/dev/null; then
  echo -e "${C_G}Tailscale:${C_N} $(tailscale status --self 2>/dev/null | head -n1 | awk '{print $1, $2}')"
fi
if [[ -f /var/run/reboot-required ]]; then
  echo -e "${C_Y}⚠ reboot required (kernel/security update pending)${C_N}"
fi
echo ""
MOTDEOF
  chmod +x /etc/update-motd.d/50-mosgarage
}

final_summary() {
  echo ""
  log "SETUP COMPLETE — summary"
  echo "  Hostname:        $(hostname)"
  echo "  SSH port:        ${NEW_SSH_PORT}  (test in a NEW terminal before closing this one!)"
  echo "  Users created:   ${!USER_KEYS[*]}"
  echo "  Firewall:        ufw $(ufw status | head -n1)"
  echo "  Backup:          restic @ ${RESTIC_REPOSITORY}, daily at ${BACKUP_TIME} UTC"
  echo "  AI CLIs:         claude, qwen, cursor-agent (per user, in PATH after re-login)"
  echo "  SSH config:      /root/ssh-config-snippet.txt"
  echo ""
  warn "Next steps:"
  echo "  1. Replace the REPLACE_ME placeholders in USER_KEYS with real public keys, then:"
  echo "       sudo bash $0 --only create_users,harden_ssh"
  echo "  2. Confirm: ssh -p ${NEW_SSH_PORT} devops@${SERVER_IP}"
  echo "  3. Run 'tailscale up --ssh' on the box if TAILSCALE_AUTHKEY was left blank."
  echo "  4. Change RESTIC_PASSWORD in /etc/mosgarage/restic.env to something you've saved in a vault."
  echo "  5. Log 'claude', 'qwen', and 'cursor-agent' in interactively once per user (each needs its own auth)."
}

# ------------------------------- main ---------------------------------------
main() {
  for stage in "${STAGES[@]}"; do
    run_stage "$stage"
  done
}
main "$@"
