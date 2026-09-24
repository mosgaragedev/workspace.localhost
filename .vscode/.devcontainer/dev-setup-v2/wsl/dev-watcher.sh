#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# dev-watcher.sh
# Install to: ~/.local/bin/dev-watcher.sh   (chmod +x)
#
# Watches ~/dev/localhost for file changes (inotifywait).
# On change: auto git add + commit + push → bare hub → all remotes.
#
# Usage:
#   dev-watcher.sh           # run as daemon (call from .bashrc or systemd)
#   dev-watcher.sh --once    # sync once and exit (manual trigger via alias)
#   dev-watcher.sh --install # install as systemd user service (auto-start)
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

WORK_DIR="$HOME/dev/localhost"
BARE_DIR="$HOME/dev/localhost.git"
LOG_FILE="$HOME/.local/share/dev-watcher/watcher.log"
DEBOUNCE=5          # seconds to wait after last change before committing
MAX_LOG_LINES=2000  # rotate log after this many lines

mkdir -p "$(dirname "$LOG_FILE")"

log() { echo "[$(date '+%H:%M:%S')] $*" | tee -a "$LOG_FILE"; }
trim_log() {
    local lines
    lines=$(wc -l < "$LOG_FILE")
    [ "$lines" -gt "$MAX_LOG_LINES" ] && tail -n $((MAX_LOG_LINES / 2)) "$LOG_FILE" > "${LOG_FILE}.tmp" && mv "${LOG_FILE}.tmp" "$LOG_FILE"
}

# ── Directories/patterns to ignore ────────────────────────────────────────────
IGNORE_DIRS=(
    node_modules .next dist build out __pycache__
    .venv venv target .terraform coverage .git
    .nuxt .output .dart_tool Pods .gradle
)
# Build inotifywait exclude regex
EXCLUDE_REGEX=$(printf '|/%s/' "${IGNORE_DIRS[@]}" | sed 's/^|//')

do_sync() {
    cd "$WORK_DIR"

    # Nothing to commit?
    if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
        return
    fi

    git add -A

    # Auto-commit message: list changed files (max 5, then "and N more")
    local changed
    changed=$(git diff --cached --name-only | head -5 | tr '\n' ' ')
    local total
    total=$(git diff --cached --name-only | wc -l)
    local msg="auto: $changed"
    [ "$total" -gt 5 ] && msg="auto: $changed... (+$((total - 5)) more)"

    git commit -m "$msg" --quiet
    git push local main --quiet      # bare hub; post-receive fans out to all remotes
    log "synced ($total files) → $msg"
    trim_log
}

# ── --once mode ───────────────────────────────────────────────────────────────
if [ "${1:-}" = "--once" ]; then
    log "Manual sync triggered"
    do_sync
    log "Done"
    exit 0
fi

# ── --install mode (systemd user service) ─────────────────────────────────────
if [ "${1:-}" = "--install" ]; then
    SERVICE_DIR="$HOME/.config/systemd/user"
    mkdir -p "$SERVICE_DIR"
    SCRIPT_PATH="$(realpath "$0")"
    cat > "$SERVICE_DIR/dev-watcher.service" << EOF
[Unit]
Description=Dev workspace auto-sync watcher
After=network.target

[Service]
ExecStart=$SCRIPT_PATH
Restart=on-failure
RestartSec=10
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=default.target
EOF
    systemctl --user daemon-reload
    systemctl --user enable --now dev-watcher.service
    echo "✓ dev-watcher systemd service installed and started"
    echo "  Status:  systemctl --user status dev-watcher"
    echo "  Logs:    journalctl --user -u dev-watcher -f"
    exit 0
fi

# ── Daemon mode ───────────────────────────────────────────────────────────────
# Check inotifywait is available
if ! command -v inotifywait &>/dev/null; then
    echo "inotifywait not found. Install with:"
    echo "  sudo apt-get install -y inotify-tools"
    exit 1
fi

log "dev-watcher started — watching $WORK_DIR"
log "Ignored dirs: ${IGNORE_DIRS[*]}"

# Track last event time for debounce
last_event=0
pending=0

# Run inotifywait in monitor mode (stays running)
inotifywait \
    --monitor \
    --recursive \
    --quiet \
    --event modify,create,delete,move \
    --exclude "$EXCLUDE_REGEX" \
    --format '%w%f %e' \
    "$WORK_DIR" | while read -r filepath event; do

    now=$(date +%s)
    last_event=$now
    pending=1

    # Debounce: wait DEBOUNCE seconds of silence before syncing
    (
        sleep "$DEBOUNCE"
        # Re-read last_event; if it hasn't changed since we started sleeping, sync
        current_last=$(cat "$HOME/.local/share/dev-watcher/last_event" 2>/dev/null || echo 0)
        if [ "$current_last" -le "$now" ]; then
            do_sync
        fi
    ) &

    echo "$now" > "$HOME/.local/share/dev-watcher/last_event"
done
