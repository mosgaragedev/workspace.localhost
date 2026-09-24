#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# 04-install-watcher.sh
# Run inside WSL. Installs inotify-tools and registers the dev-watcher
# as a systemd user service so it auto-starts with WSL.
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

YELLOW='\033[1;33m'; GREEN='\033[0;32m'; RESET='\033[0m'
step() { echo -e "\n${YELLOW}▶ $1${RESET}"; }
ok()   { echo -e "${GREEN}✓ $1${RESET}"; }

# ─── 1. Install inotify-tools ─────────────────────────────────────────────────
step "Installing inotify-tools"
sudo apt-get update -qq
sudo apt-get install -y --no-install-recommends inotify-tools
ok "inotify-tools installed"

# ─── 2. Copy watcher script ───────────────────────────────────────────────────
step "Installing dev-watcher.sh"
SCRIPT_DIR="$HOME/.local/bin"
mkdir -p "$SCRIPT_DIR"
WATCHER_SRC="$(dirname "$0")/../wsl/dev-watcher.sh"
cp "$WATCHER_SRC" "$SCRIPT_DIR/dev-watcher.sh"
chmod +x "$SCRIPT_DIR/dev-watcher.sh"
# Ensure ~/.local/bin is on PATH
if [[ ":$PATH:" != *":$SCRIPT_DIR:"* ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc" 2>/dev/null || true
fi
ok "dev-watcher.sh installed to $SCRIPT_DIR"

# ─── 3. Enable systemd for WSL (needed for user services) ────────────────────
step "Checking systemd in WSL"
if systemctl --user status &>/dev/null 2>&1; then
    ok "systemd is running"
else
    echo "  Enabling systemd in /etc/wsl.conf..."
    sudo tee -a /etc/wsl.conf > /dev/null <<'EOF'

[boot]
systemd = true
EOF
    echo -e "${YELLOW}  ⚠ Restart WSL after this script: wsl --shutdown (in PowerShell)${RESET}"
    echo "  Then re-run:  ~/.local/bin/dev-watcher.sh --install"
    echo "  Skipping service registration until systemd is available."
    exit 0
fi

# ─── 4. Register as systemd user service ─────────────────────────────────────
step "Registering dev-watcher as systemd user service"
"$SCRIPT_DIR/dev-watcher.sh" --install
ok "Service registered"

# ─── 5. Verify ───────────────────────────────────────────────────────────────
step "Status check"
sleep 2
systemctl --user status dev-watcher --no-pager || true

echo -e "\n${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${GREEN}  Auto-watcher active.${RESET}"
echo -e "  Watching : ~/dev/localhost"
echo -e "  On change: auto git add + commit + push → all remotes"
echo -e "  Logs     : journalctl --user -u dev-watcher -f"
echo -e "  Manual   : sync-now   (alias for one-shot sync)"
echo -e ""
echo -e "  If you copy files into ~/dev/localhost, they will be"
echo -e "  auto-committed and pushed within ~5 seconds of the"
echo -e "  last file being written."
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}\n"
