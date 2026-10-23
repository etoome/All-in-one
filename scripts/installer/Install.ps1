#Requires -Version 5.1
<#
    Installs (or removes) the All-in-one .ppam as a PowerPoint add-in for the current user.
    Expects the built .ppam file to sit next to this script (both live in the .bin
    folder of the release zip), named after its version, e.g. All-in-one-v0.1.0.ppam.
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
    Write-Host "            PowerPoint Add-in Installer v@@VERSION@@" -ForegroundColor DarkCyan
    Write-Host ""
}

function Write-Step { param([string]$Message) Write-Host "  [>] $Message" -ForegroundColor White }
function Write-Ok   { param([string]$Message) Write-Host "  [OK] $Message" -ForegroundColor Green }
function Write-Note { param([string]$Message) Write-Host "  $Message" -ForegroundColor Yellow }

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

$ppamFile    = Get-ChildItem -Path $PSScriptRoot -Filter '*.ppam' -File -ErrorAction SilentlyContinue | Select-Object -First 1
$installDir  = Join-Path $env:APPDATA 'Microsoft\AddIns'
$installPath = if ($ppamFile) { Join-Path $installDir $ppamFile.Name } else { $null }
$addInName   = 'All-in-one'

# Locate the installed PowerPoint version so we can write its AutoLoad registry entry.
$officeVersion = Get-ChildItem 'HKCU:\Software\Microsoft\Office' -ErrorAction SilentlyContinue |
    Where-Object { $_.PSChildName -match '^\d+\.\d+$' -and (Test-Path (Join-Path $_.PSPath 'PowerPoint')) } |
    Sort-Object { [double]$_.PSChildName } -Descending |
    Select-Object -First 1 -ExpandProperty PSChildName

if (-not $officeVersion) { throw "Could not find an installed PowerPoint version under HKCU:\Software\Microsoft\Office." }

# AutoLoad registry entry PowerPoint reads at startup to load the add-in for every presentation.
$registryKey = "HKCU:\Software\Microsoft\Office\$officeVersion\PowerPoint\AddIns\$addInName"

# The installed file name changes with each version, so clear every All-in-one* file
# rather than tracking a single path -- otherwise old versions pile up in $installDir.
function Remove-InstalledAddIns {
    Get-ChildItem -Path $installDir -Filter "$addInName*" -File -ErrorAction SilentlyContinue | ForEach-Object {
        $file = $_
        Invoke-FileOp { Remove-Item $file.FullName -Force }
    }
}

if ($Uninstall) {
    Write-Step "Removing add-in..."
    Remove-InstalledAddIns
    if (Test-Path $registryKey) { Remove-Item $registryKey -Recurse -Force }
    Write-Ok "Uninstalled from: $installDir"
    Write-Host ""
    Write-Note "Restart PowerPoint to remove the All-in-one tab."
    Write-Host ""
}
else {
    if (-not $ppamFile) { throw "No .ppam file found next to this script: $PSScriptRoot" }

    Write-Step "Copying add-in to $installDir..."
    New-Item -ItemType Directory -Path $installDir -Force | Out-Null
    Remove-InstalledAddIns
    Invoke-FileOp { Copy-Item -Path $ppamFile.FullName -Destination $installPath -Force }
    # Strip Mark-of-the-Web (from downloading/extracting the zip) so PowerPoint trusts
    # the add-in and doesn't raise the macro security prompt on startup.
    Unblock-File -Path $installPath

    Write-Step "Registering auto-load entry..."
    New-Item -Path $registryKey -Force | Out-Null
    New-ItemProperty -Path $registryKey -Name 'Path'     -Value $installPath -PropertyType String -Force | Out-Null
    New-ItemProperty -Path $registryKey -Name 'AutoLoad' -Value 1            -PropertyType DWord  -Force | Out-Null

    Write-Ok "Installed: $installPath"
    Write-Host ""
    Write-Note "Restart PowerPoint to activate the All-in-one tab."
    Write-Host ""
}
