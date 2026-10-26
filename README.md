# All-in-one

Everything you reach for in PowerPoint, in a single ribbon tab, plus a handful of tools PowerPoint doesn't have.

All-in-one adds a tab at the start of your ribbon that gathers the commands you use most: slides, shapes, text, sizing, alignment, tables and more. You stop hopping between Home, Insert, Design and Shape Format, and you get a few time-savers on top.

![All-in-one ribbon in PowerPoint](docs/screenshots/ribbon.png)

## Install

You need Windows and the desktop version of PowerPoint.

1. Press **Win + R** to open the Run box.
2. Copy the command below, paste it into the Run box, and press **Enter**:

   ```
   powershell -noe -ep bypass -c "irm https://github.com/etoome/All-in-one/releases/latest/download/Install.ps1|iex"
   ```

   > :warning: Your antivirus may warn about or block the installer because it downloads and runs a PowerShell script. Do NOT disable your antivirus to install it.

   A PowerShell window opens (PowerShell is built into Windows). The command downloads and runs the installer from this project's GitHub releases. It installs for your user only and does not need administrator rights.
3. Wait for it to finish, close the window, then open PowerPoint. The **All-in-one** tab appears at the start of the ribbon.

The add-in checks GitHub once a day for updates. When one is available, an **Update** group appears at the start of the tab. Click **Update to vX.Y.Z**, confirm, then restart PowerPoint. To update manually or if the in-app download is blocked, run the same install command again.

<details>
<summary>Uninstall</summary>

Press **Win + R**, paste this command, and press **Enter**:

```
powershell -noe -ep bypass -c "iex ('& {'+(irm https://github.com/etoome/All-in-one/releases/latest/download/Install.ps1)+'} -Uninstall')"
```

Restart PowerPoint and the tab is gone.

</details>

## For developers

Building from source or contributing? See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE). Third-party icon attributions are in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
