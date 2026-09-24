#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# 01-wsl-init.sh  (run inside WSL first — this is now the source of truth)
# Sets up:
#   ~/dev/localhost       — working tree (native WSL filesystem, fast)
#   ~/dev/localhost.git   — bare hub (WSL-side)
#
# Remotes fanned out via post-receive hook:
#   → D:\dev\localhost    (Windows mirror/backup via git, not mount)
#   → GitHub
#   → Oracle VPS
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

YELLOW='\033[1;33m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; RESET='\033[0m'
step() { echo -e "\n${YELLOW}▶ $1${RESET}"; }
ok()   { echo -e "${GREEN}✓ $1${RESET}"; }
info() { echo -e "${CYAN}  $1${RESET}"; }

BARE_DIR="$HOME/dev/localhost.git"
WORK_DIR="$HOME/dev/localhost"

# ─── Params (edit or pass as env vars) ───────────────────────────────────────
GITHUB_USER="${GITHUB_USER:-}"
GITHUB_REPO="${GITHUB_REPO:-localhost}"
VPS_HOST="${VPS_HOST:-oracle-vps}"           # must match ~/.ssh/config Host
VPS_USER="${VPS_USER:-ubuntu}"
WIN_BARE="D:/dev/localhost.git"              # Windows bare repo (POSIX-style for git)

# ─── 1. Create bare hub ───────────────────────────────────────────────────────
step "Initialising bare hub at $BARE_DIR"
mkdir -p "$BARE_DIR"
if [ ! -f "$BARE_DIR/HEAD" ]; then
    git init --bare "$BARE_DIR"
    ok "Bare hub initialised"
else
    ok "Bare hub already exists"
fi

# ─── 2. Create working tree ───────────────────────────────────────────────────
step "Initialising working tree at $WORK_DIR"
mkdir -p "$WORK_DIR"
if [ ! -d "$WORK_DIR/.git" ]; then
    git clone "$BARE_DIR" "$WORK_DIR"
    cd "$WORK_DIR"
    # Seed with a README if empty
    if [ ! -f README.md ]; then
        echo "# localhost dev workspace" > README.md
        git add README.md
        git commit -m "chore: initial workspace commit"
        git push origin main
    fi
    ok "Working tree created"
else
    ok "Working tree already exists"
fi

# ─── 3. Wire remotes on the bare hub ─────────────────────────────────────────
step "Configuring remotes on bare hub"
cd "$BARE_DIR"

upsert_remote() {
    local name="$1" url="$2"
    if git remote get-url "$name" &>/dev/null; then
        git remote set-url "$name" "$url"
    else
        git remote add "$name" "$url"
    fi
}

# Windows bare repo (git pushes over the WSL↔Windows bridge — small delta only)
upsert_remote "windows" "/mnt/d/dev/localhost.git"
info "remote: windows → /mnt/d/dev/localhost.git"

# GitHub
if [ -n "$GITHUB_USER" ]; then
    upsert_remote "github" "git@github.com:${GITHUB_USER}/${GITHUB_REPO}.git"
    info "remote: github  → git@github.com:${GITHUB_USER}/${GITHUB_REPO}.git"
else
    info "GITHUB_USER not set — add later: git -C $BARE_DIR remote add github git@github.com:YOU/localhost.git"
fi

# Oracle VPS
upsert_remote "vps" "ssh://${VPS_HOST}/home/${VPS_USER}/dev/localhost.git"
info "remote: vps     → ssh://${VPS_HOST}/home/${VPS_USER}/dev/localhost.git"

# ─── 4. Install post-receive hook ────────────────────────────────────────────
step "Installing post-receive hook"
HOOK_SRC="$(dirname "$0")/../git-hooks/post-receive"
HOOK_DST="$BARE_DIR/hooks/post-receive"
if [ -f "$HOOK_SRC" ]; then
    cp "$HOOK_SRC" "$HOOK_DST"
    chmod +x "$HOOK_DST"
    ok "post-receive hook installed"
else
    # Inline it if the file isn't alongside this script
    cat > "$HOOK_DST" << 'HOOK'
#!/usr/bin/env bash
source "$(dirname "$0")/post-receive"
HOOK
    chmod +x "$HOOK_DST"
    info "Stub hook installed — copy git-hooks/post-receive to $BARE_DIR/hooks/"
fi

# ─── 5. Global git config ────────────────────────────────────────────────────
step "Git global config"
git config --global core.autocrlf    input
git config --global push.default     current
git config --global pull.rebase      false
git config --global init.defaultBranch main
git config --global --add safe.directory "$BARE_DIR"
git config --global --add safe.directory "$WORK_DIR"
ok "git config applied"

# ─── 6. Shell aliases ────────────────────────────────────────────────────────
step "Adding shell aliases"
ALIASES='
# ── localhost dev workspace ──────────────────────────────────────────────────
alias dev="cd ~/dev/localhost"
alias gs="git status"
alias gpa="git push"          # push to bare hub → hook fans out to all remotes
alias sync-now="~/.local/bin/dev-watcher.sh --once"  # manual one-shot sync
'
for RC in "$HOME/.bashrc" "$HOME/.zshrc"; do
    [ -f "$RC" ] && ! grep -q "localhost dev workspace" "$RC" && echo "$ALIASES" >> "$RC"
done
ok "Aliases added (reload shell with: source ~/.bashrc)"

echo -e "\n${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${GREEN}  WSL init complete.${RESET}"
echo -e "  Next: run  02-windows-mirror-init.ps1  in PowerShell (Windows)"
echo -e "        run  03-vps-setup.sh             on Oracle VPS"
echo -e "        run  04-install-watcher.sh       to enable auto-sync"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}\n"
