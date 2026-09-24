# ─────────────────────────────────────────────────────────────────────────────
# 02-windows-mirror-init.ps1
# Run in PowerShell on Windows (after 01-wsl-init.sh has run in WSL).
#
# Creates D:\dev\localhost.git (bare) and D:\dev\localhost (working tree)
# as a MIRROR of the WSL bare hub — populated by git push, not file copy.
# Windows is the backup surface; WSL is the source of truth.
# ─────────────────────────────────────────────────────────────────────────────
param(
    [string]$WslDistro = "Ubuntu"
)
$ErrorActionPreference = "Stop"

function Step($m) { Write-Host "`n▶ $m" -ForegroundColor Yellow }
function Ok($m)   { Write-Host "✓ $m"   -ForegroundColor Green  }
function Info($m) { Write-Host "  $m"   -ForegroundColor Cyan   }

$WinBareDir = "D:\dev\localhost.git"
$WinWorkDir = "D:\dev\localhost"

# ─── 1. Create Windows bare repo ─────────────────────────────────────────────
Step "Initialising Windows bare repo at $WinBareDir"
New-Item -ItemType Directory -Force -Path $WinBareDir | Out-Null
$bareExists = Test-Path "$WinBareDir\HEAD"
if (-not $bareExists) {
    git init --bare $WinBareDir
    Ok "Windows bare repo initialised"
} else {
    Ok "Already exists — skipping init"
}

# ─── 2. Install post-receive hook (auto-checkout on push from WSL) ───────────
Step "Installing post-receive hook in Windows bare repo"
$hookDir = "$WinBareDir\hooks"
New-Item -ItemType Directory -Force -Path $hookDir | Out-Null
# Git on Windows can run .sh hooks if Git for Windows is installed
$hookPath = "$hookDir\post-receive"
Set-Content -Path $hookPath -Encoding UTF8 -Value @'
#!/usr/bin/env bash
# Checkout into D:\dev\localhost (Windows working tree) on every push from WSL
BARE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WORK_DIR="${BARE_DIR%.git}"

while read oldrev newrev refname; do
    branch="${refname#refs/heads/}"
    [ "$branch" = "main" ] || continue
    git --work-tree="$WORK_DIR" --git-dir="$BARE_DIR" checkout -f main
    echo "✓ Windows working tree updated: $WORK_DIR"
done
'@
Ok "post-receive hook written to $hookPath"

# ─── 3. Clone working tree from bare ─────────────────────────────────────────
Step "Creating Windows working tree at $WinWorkDir"
if (-not (Test-Path "$WinWorkDir\.git")) {
    # Clone locally — no network, instant
    git clone $WinBareDir $WinWorkDir 2>&1 | Out-Null
    Ok "Windows working tree cloned (empty until first push from WSL)"
} else {
    Ok "Working tree already exists"
}

# ─── 4. Configure long paths (avoids issues with deep project structures) ────
Step "Enabling long path support"
git config --system core.longpaths true 2>$null
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" `
    -Name "LongPathsEnabled" -Value 1 -ErrorAction SilentlyContinue
Ok "Long paths enabled"

# ─── 5. Configure VS Code to open WSL projects (not the Windows mirror) ──────
Step "VS Code: setting default folder to open via WSL"
$vsCodeSettings = "$env:APPDATA\Code\User\settings.json"
if (Test-Path $vsCodeSettings) {
    $settings = Get-Content $vsCodeSettings -Raw | ConvertFrom-Json -AsHashtable
} else {
    $settings = @{}
}
# These ensure VS Code always resolves projects through WSL, not the D:\ mount
$settings["remote.WSL.fileWatcher.polling"] = $false
$settings["files.watcherExclude"]["D:\\dev\\**"] = $true   # don't watch Windows mirror
$settings | ConvertTo-Json -Depth 10 | Set-Content $vsCodeSettings -Encoding UTF8
Ok "VS Code settings updated"

# ─── 6. Summary ───────────────────────────────────────────────────────────────
Write-Host @"

$("`n" + ("─" * 62))
  Windows mirror ready.

  How pushes work:
    WSL working tree  →  git push (to ~/dev/localhost.git)
                              │
                    post-receive fans out to:
                              ├─▶  D:\dev\localhost.git  (Windows bare)
                              │         └─▶ D:\dev\localhost  (Windows working tree)
                              ├─▶  GitHub
                              └─▶  Oracle VPS

  D:\dev\localhost is your Windows backup — always up to date after each push.
  Never edit files directly on D:\dev\localhost; always work from WSL.
$("─" * 62)
"@ -ForegroundColor Cyan
