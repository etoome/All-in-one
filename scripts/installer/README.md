# All-in-one

```
    _    _     _       ___             ___
   / \  | |   | |     |_ _| _ __      / _ \  _ __   ___
  / _ \ | |   | |      | | | '_ \    | | | || '_ \ / _ \
 / ___ \| |__ | |___   | | | | | |   | |_| || | | |  __/
/_/   \_\____||_____| |___||_| |_|    \___/ |_| |_|\___|
            PowerPoint Add-in v@@VERSION@@
```

A custom PowerPoint ribbon tab (`All-in-one`) combining commonly used built-in commands, plus a few VBA-powered tools not offered natively by PowerPoint.

## Install

Double-click `Install.cmd`.

This copies `All-in-one.ppam` into your per-user PowerPoint Add-ins folder and registers it to auto-load. Restart PowerPoint for the `All-in-one` tab to appear.

## Uninstall

Run `Install.cmd -Uninstall` from a command prompt, or from PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".\.bin\Install.ps1" -Uninstall
```

Restart PowerPoint to remove the tab.
