#Requires -Version 5.1
<#
    Installs (or removes) the All-in-one .ppam as a PowerPoint add-in for the current user.
    Uses the .ppam beside this script.
#>
[CmdletBinding()]
param(
    [switch]$Uninstall
)

$ErrorActionPreference = 'Stop'

function Write-Banner {
    $art = @(
        "    _    _     _       ___             ___             ",
        "   / \  | |   | |     |_ _| _ __      / _ \  _ __   ___ ",
        "  / _ \ | |   | |      | | | '_ \    | | | || '_ \ / _ \",
        " / ___ \| |__ | |___   | | | | | |   | |_| || | | |  __/",
        "/_/   \_\____||_____| |___||_| |_|    \___/ |_| |_|\___|"
    )
    Write-Host ""
    foreach ($line in $art) { Write-Host $line -ForegroundColor Cyan }
    Write-Host ""
    Write-Host "            PowerPoint Add-in Installer v@@VERSION@@" -ForegroundColor DarkCyan
    Write-Host "                         by etoome" -ForegroundColor DarkCyan
    Write-Host ""
}

function Write-Step { param([string]$Message) Write-Host "  [>] $Message" -ForegroundColor White }
function Write-Ok   { param([string]$Message) Write-Host "  [OK] $Message" -ForegroundColor Green }
function Write-Note { param([string]$Message) Write-Host "  $Message" -ForegroundColor Yellow }
# Lists every action the script will perform and asks once; returns $false if declined.
function Confirm-Actions {
    param([string[]]$Actions)
    Write-Host "  Here is what will happen:" -ForegroundColor White
    foreach ($action in $Actions) { Write-Host "   - $action" -ForegroundColor White }
    Write-Host ""
    $answer = Read-Host "  Do you want to continue? [Y/n]"
    Write-Host ""
    if ($answer -and $answer.Trim() -notmatch '^(y|yes)$') {
        Write-Note "Cancelled. No changes were made."
        Write-Host ""
        return $false
    }
    return $true
}

# A loaded add-in is locked by PowerPoint; retry after the user closes it, rethrow any other failure.
function Invoke-FileOp {
    param([scriptblock]$Action)
    while ($true) {
        try { & $Action; return }
        catch {
            if (-not (Get-Process -Name POWERPNT -ErrorAction SilentlyContinue)) { throw }
            Write-Host "  The add-in file is in use. Close PowerPoint to continue..." -ForegroundColor Red
            while (Get-Process -Name POWERPNT -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 1 }
        }
    }
}

Write-Banner

$ppamFile = if ($PSScriptRoot) {
    Get-ChildItem -Path $PSScriptRoot -Filter '*.ppam' -File -ErrorAction SilentlyContinue | Select-Object -First 1
}
$installDir = Join-Path $env:APPDATA 'Microsoft\AddIns'
$addInName   = 'All-in-one'

# Locate the installed PowerPoint version so we can write its AutoLoad registry entry.
$officeVersion = Get-ChildItem 'HKCU:\Software\Microsoft\Office' -ErrorAction SilentlyContinue |
    Where-Object { $_.PSChildName -match '^\d+\.\d+$' -and (Test-Path (Join-Path $_.PSPath 'PowerPoint')) } |
    Sort-Object { [double]$_.PSChildName } -Descending |
    Select-Object -First 1 -ExpandProperty PSChildName

if (-not $officeVersion) { throw "Could not find an installed PowerPoint version under HKCU:\Software\Microsoft\Office." }

# AutoLoad registry entry PowerPoint reads at startup to load the add-in for every presentation.
$addInsKey   = "HKCU:\Software\Microsoft\Office\$officeVersion\PowerPoint\AddIns"
$registryKey = Join-Path $addInsKey $addInName

function Remove-AddInRegistrations {
    Remove-Item $registryKey -Recurse -Force -ErrorAction SilentlyContinue
}

# The installed file name changes with each version, so clear every All-in-one* file
# rather than tracking a single path -- otherwise old versions pile up in $installDir.
function Remove-InstalledAddIns {
    Get-ChildItem -Path $installDir -Filter "$addInName*" -File -ErrorAction SilentlyContinue | ForEach-Object {
        $file = $_
        Invoke-FileOp { Remove-Item $file.FullName -Force }
    }
}

# Highest installed version.
function Get-InstalledAddIn {
    Get-ChildItem -Path $installDir -Filter "$addInName*.ppam" -File -ErrorAction SilentlyContinue | ForEach-Object {
        if ($_.Name -match '^All-in-one-v(\d+)\.(\d+)\.(\d+)\.ppam$') { [version]"$($Matches[1]).$($Matches[2]).$($Matches[3])" }
    } | Sort-Object -Descending | Select-Object -First 1
}

if ($Uninstall) {
    $confirmed = Confirm-Actions @(
        "Remove the All-in-one add-in from your computer ($installDir)",
        "Stop PowerPoint from loading it when it starts",
        "Delete the add-in's saved preferences"
    )
    if (-not $confirmed) { return }
    Write-Step "Removing add-in..."
    Remove-InstalledAddIns
    Remove-AddInRegistrations
    # Update-check state saved by the add-in's SaveSetting calls.
    Remove-Item "HKCU:\Software\VB and VBA Program Settings\$addInName" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Ok "Uninstalled from: $installDir"
    Write-Host ""
    Write-Note "Restart PowerPoint to remove the All-in-one tab."
    Write-Host ""
}
else {
    if (-not $ppamFile) {
        throw "The add-in file was not found next to this script. Extract the whole zip first, then run Install.cmd."
    }
    $installed = Get-InstalledAddIn
    $actions = @()
    if ($installed) {
        $actions += "Replace the installed v$installed with v@@VERSION@@ ($installDir)"
        if ([version]'@@VERSION@@' -lt $installed) { $actions += "Note: this is older than the version you have installed" }
    }
    else {
        $actions += "Install the add-in for your user account ($installDir)"
    }
    $actions += "Set PowerPoint to load it automatically when it starts"
    $actions += "Note: updates are not installed automatically. New versions are published on @@UPDATE_HOST@@"
    if (-not (Confirm-Actions $actions)) { return }

    $installPath = Join-Path $installDir $ppamFile.Name

    Write-Step "Copying add-in to $installDir..."
    New-Item -ItemType Directory -Path $installDir -Force | Out-Null
    Remove-InstalledAddIns
    Invoke-FileOp { Copy-Item -Path $ppamFile.FullName -Destination $installPath -Force }
    # Strip Mark-of-the-Web so PowerPoint trusts the add-in at startup.
    Unblock-File -Path $installPath

    Write-Step "Setting PowerPoint to load All-in-one at startup..."
    Remove-AddInRegistrations
    New-Item -Path $registryKey -Force | Out-Null
    New-ItemProperty -Path $registryKey -Name 'Path'     -Value $installPath -PropertyType String -Force | Out-Null
    New-ItemProperty -Path $registryKey -Name 'AutoLoad' -Value 1            -PropertyType DWord  -Force | Out-Null

    Write-Ok "Installed: $installPath"
    Write-Host ""
    Write-Note "Restart PowerPoint to activate the All-in-one tab."
    Write-Host ""
}
