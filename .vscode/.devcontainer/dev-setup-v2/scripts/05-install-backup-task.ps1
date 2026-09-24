# ─────────────────────────────────────────────────────────────────────────────
# 05-install-backup-task.ps1
# Syncs D:\dev\localhost (Windows git mirror) → OneDrive\DevBackup
# Also backs up VS/VSCode settings.
#
# Source is D:\dev\localhost — populated by git push from WSL, not a mount.
# This means robocopy never touches the WSL filesystem at all.
#
# Run in PowerShell (no admin needed).
# ─────────────────────────────────────────────────────────────────────────────
param(
    [string]$OneDrivePath    = "$env:OneDrive",
    [string]$SourcePath      = "D:\dev\localhost",
    [string]$BackupName      = "DevBackup",
    [int]   $IntervalMinutes = 30
)

$ErrorActionPreference = "Stop"
$Dest    = Join-Path $OneDrivePath $BackupName
$LogDir  = Join-Path $env:LOCALAPPDATA "DevBackup\logs"
$LogFile = Join-Path $LogDir "robocopy.log"

New-Item -ItemType Directory -Force -Path $LogDir | Out-Null
New-Item -ItemType Directory -Force -Path $Dest   | Out-Null

# ─── Exclusions ───────────────────────────────────────────────────────────────
$ExcludeDirs = @(
    "node_modules",".next","dist","build","out",".nuxt",".output",
    "__pycache__",".venv","venv",".tox","target","bin","obj",
    ".vs",".gradle",".dart_tool","Pods",".terraform","coverage",
    ".nyc_output","storybook-static",".git"
)
$ExcludeFiles = @(
    "*.pyc","*.pyo","*.class","*.o","*.obj","*.lib","*.exe",
    "*.log","*.tmp","*.cache","Thumbs.db","desktop.ini",".DS_Store","*.lock"
)

$XD = $ExcludeDirs  -join " "
$XF = $ExcludeFiles -join " "

# ─── Backup script (written to disk, run by the scheduled task) ───────────────
$BackupScript = Join-Path $LogDir "run-backup.ps1"
Set-Content -Path $BackupScript -Encoding UTF8 -Value @"
`$ts = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
Add-Content "$LogFile" "`n=== `$ts ==="

# 1. Sync dev files (from Windows git mirror — no WSL mount involved)
robocopy "$SourcePath" "$Dest\code" ``
    /MIR /FFT /Z /NP /R:2 /W:5 ``
    /XD $XD ``
    /XF $XF ``
    /LOG+:"$LogFile"

# 2. Backup VS Code user settings
`$vsCodeSrc = "`$env:APPDATA\Code\User"
`$vsCodeDst = "$Dest\vscode-settings"
if (Test-Path `$vsCodeSrc) {
    robocopy `$vsCodeSrc `$vsCodeDst /MIR /FFT /Z /NP /R:1 /W:2 /LOG+:"$LogFile"
}

# 3. Backup Visual Studio settings
`$vsSrc = "`$env:LOCALAPPDATA\Microsoft\VisualStudio"
`$vsDst = "$Dest\visualstudio-settings"
if (Test-Path `$vsSrc) {
    robocopy `$vsSrc `$vsDst /MIR /FFT /NP /R:1 /W:2 ``
        /XD "ComponentModelCache" "ActivityLog*" ``
        /LOG+:"$LogFile"
}

# 4. Backup SSH keys (encrypted — OneDrive is the off-site copy)
`$sshSrc = "`$env:USERPROFILE\.ssh"
`$sshDst = "$Dest\ssh-keys"
if (Test-Path `$sshSrc) {
    robocopy `$sshSrc `$sshDst /MIR /FFT /NP /R:1 /W:2 /LOG+:"$LogFile"
}

`$exit = `$LASTEXITCODE
`$status = if (`$exit -le 3) { "OK (exit `$exit)" } else { "WARNING exit `$exit" }
Add-Content "$LogFile" "=== `$status ==="
"@

# ─── Register scheduled task ──────────────────────────────────────────────────
$TaskName = "DevBackup-OneDrive-v2"
$Action   = New-ScheduledTaskAction `
    -Execute "powershell.exe" `
    -Argument "-NonInteractive -WindowStyle Hidden -File `"$BackupScript`""

$RepeatTrigger = New-ScheduledTaskTrigger `
    -RepetitionInterval (New-TimeSpan -Minutes $IntervalMinutes) `
    -Once -At (Get-Date).AddMinutes(3)
$LogonTrigger  = New-ScheduledTaskTrigger -AtLogOn

$Settings = New-ScheduledTaskSettingsSet `
    -ExecutionTimeLimit (New-TimeSpan -Hours 1) `
    -MultipleInstances IgnoreNew `
    -StartWhenAvailable `
    -RunOnlyIfNetworkAvailable:$false

Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false -ErrorAction SilentlyContinue
Register-ScheduledTask `
    -TaskName    $TaskName `
    -Action      $Action `
    -Trigger     @($RepeatTrigger, $LogonTrigger) `
    -Settings    $Settings `
    -Description "Backs up D:\dev\localhost + IDE settings to OneDrive every ${IntervalMinutes}min"

Write-Host "`n✓ Backup task registered" -ForegroundColor Green
Write-Host "  Source  : $SourcePath  (git mirror from WSL — no mount overhead)"
Write-Host "  Dest    : $Dest"
Write-Host "  Also    : VS Code settings, Visual Studio settings, SSH keys"
Write-Host "  Runs    : every ${IntervalMinutes}min + on login"
Write-Host "  Log     : $LogFile"
Write-Host "`n  Run now: Start-ScheduledTask -TaskName '$TaskName'"
