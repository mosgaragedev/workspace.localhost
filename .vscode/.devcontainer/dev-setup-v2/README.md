# Unified Dev Environment v2 — WSL-first Architecture

## Why this is different from v1

| | v1 (mount-based) | v2 (git-based) ✓ |
|---|---|---|
| WSL reads files from | `/mnt/d/dev` (Windows NTFS via VM boundary) | `~/dev/localhost` (native ext4, fast) |
| Windows gets files via | Shared mount (constant I/O pressure) | `git push` (delta only, occasional) |
| File ops speed | Slow (5–10× penalty on `npm install`, `git status`) | Native speed |
| Sync mechanism | Always-on VirtioFS/9P bridge | Event-driven (inotifywait → git push) |
| Windows role | Source of truth | Backup mirror |
| WSL role | Consumer | Source of truth |

## Full architecture

```
                    ┌──────────────────────────────────┐
                    │   ~/dev/localhost  (WSL, ext4)   │  ← work here
                    │   Native Linux speed             │
                    └──────────────┬───────────────────┘
                                   │ git push
                                   ▼
                    ┌──────────────────────────────────┐
                    │  ~/dev/localhost.git  (WSL bare) │  ← hub
                    └──┬────────────┬─────────────┬───┘
                       │            │             │
              post-receive hook fans out to all remotes
                       │            │             │
                       ▼            ▼             ▼
              D:\dev\localhost  GitHub        ~/dev/localhost.git
              (Windows mirror)  (cloud)       (Oracle VPS)
                    │
              D:\dev\localhost   ← Windows working tree
              (auto-checkout     (auto-checked out by
               by hook)           Windows post-receive)
                    │
              OneDrive\DevBackup ← scheduled robocopy
              (cloud backup)       every 30min
```

## Auto-sync: what happens when you copy files into WSL

1. You drop files into `~/dev/localhost/` (drag & drop, `cp`, `scp`, anything)
2. `inotifywait` detects the change within milliseconds
3. After a 5-second debounce (waits for burst writes to finish), `dev-watcher.sh` runs:
   - `git add -A`
   - `git commit -m "auto: <list of changed files>"`
   - `git push local main`  → triggers post-receive →
     - Windows mirror updated (git push, delta only)
     - GitHub updated
     - Oracle VPS updated
4. **Total time from file drop to everywhere synced: ~10 seconds**

No manual `git push` needed for day-to-day work.

## Setup order

```bash
# 1. WSL (run inside WSL)
bash scripts/01-wsl-init.sh

# 2. Windows (run in PowerShell)
.\scripts\02-windows-mirror-init.ps1

# 3. Oracle VPS (ssh in, then run)
bash scripts/03-vps-setup.sh

# 4. WSL — install file watcher (run inside WSL)
bash scripts/04-install-watcher.sh

# 5. Windows — register OneDrive backup (run in PowerShell)
.\scripts\05-install-backup-task.ps1
```

## Useful commands (WSL)

```bash
dev          # cd ~/dev/localhost
gs           # git status
gpa          # git push (triggers sync to all remotes)
sync-now     # manual one-shot sync (git add + commit + push)

# Watcher management
systemctl --user status  dev-watcher   # is it running?
systemctl --user restart dev-watcher   # restart after config change
journalctl  --user -u dev-watcher -f   # live log
cat ~/.local/share/dev-watcher/watcher.log  # history
```

## Opening projects

| IDE | How to open |
|-----|-------------|
| VS Code | `cd ~/dev/localhost/my-project && code .` (from WSL terminal) |
| Visual Studio | File → Open → Folder → `D:\dev\localhost\my-project` |
| Both | Both point at the same files — edits in one appear in the other |

## OneDrive backup contents

```
OneDrive\DevBackup\
├── code\                  ← D:\dev\localhost mirror (your source files)
├── vscode-settings\       ← VS Code user settings + keybindings
├── visualstudio-settings\ ← Visual Studio settings
└── ssh-keys\              ← SSH keys (off-site copy)
```
