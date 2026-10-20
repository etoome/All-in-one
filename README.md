# All-in-one

A custom PowerPoint ribbon tab (`All-in-one`) combining commonly used built-in commands, plus a few VBA-powered tools not offered natively by PowerPoint.

## Building

`build.ps1` packages the sources under `src/` into `dist/All-in-one-v<yyyy.MM.dd>.ppam`, a PowerPoint add-in you install once and use across all presentations.

### Prerequisites

- Windows with the desktop PowerPoint app installed.
- PowerShell 5.1 or later.
- In PowerPoint: **File > Options > Trust Center > Trust Center Settings > Macro Settings**, check **Trust access to the VBA project object model**. This is required for the build script to import the VBA modules via automation.

### Build

From the repo root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".\scripts\Build.ps1"
```

This launches PowerPoint in the background, imports the modules from `src/modules/`, saves the result as `dist/All-in-one-v<yyyy.MM.dd>.ppam`, then injects `src/ui/customUI.xml` as the ribbon customization part. It then generates the installer files and packages everything into `dist/All-in-one-v<yyyy.MM.dd>.zip` (versioned by build date) for distribution, with this layout:

```
Install.cmd
README.md
All-in-one/
    All-in-one-v<yyyy.MM.dd>.ppam
    Install.ps1
```

Close PowerPoint first if the add-in is currently loaded, since the output file is locked while in use.

### Install

Extract `dist/All-in-one-<yyyy.MM.dd>.zip`, then double-click `Install.cmd`, or from PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".\All-in-one\Install.ps1"
```

This copies the `.ppam` into your per-user PowerPoint Add-ins folder and registers it to auto-load. Restart PowerPoint for the tab to appear.

To remove it:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".\All-in-one\Install.ps1" -Uninstall
```

or run `Install.cmd -Uninstall` from a command prompt.

Re-run `.\scripts\Build.ps1` after changing anything under `src/`, then re-extract the zip and re-run `Install.cmd` (or restart PowerPoint if the add-in is already loaded) to pick up the changes.

## References


https://officeprotocoldoc.z19.web.core.windows.net/files/MS-CUSTOMUI2/%5bMS-CUSTOMUI2%5d.pdf

https://github.com/OfficeDev/office-fluent-ui-command-identifiers/blob/main/Microsoft%20365/Current%20Channel/powerpointcontrols.xlsx
