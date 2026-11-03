# Contributing

## Workflow

Contributions are made through a fork and pull request:

1. Fork this repository on GitHub.
2. Clone your fork and create a branch for your change.
3. Make your changes, then [build](#building) and test the add-in in PowerPoint.
4. Commit using [Conventional Commits](#commits-and-releases) (`uv run cz commit`) and push the branch to your fork.
5. Open a pull request from your branch to this repository's `main` branch.

Only maintainers run the release steps under [Commits and releases](#commits-and-releases).

## Building

`scripts/build.py` packages the sources under `src/` into `dist/All-in-one-v<version>.zip`, which contains a PowerPoint add-in you install once and use across all presentations.

### Prerequisites

- Windows with the desktop PowerPoint app installed.
- [uv](https://docs.astral.sh/uv/) (`winget install astral-sh.uv`). It downloads Python and installs the locked dependencies automatically on first run.
- In PowerPoint: **File > Options > Trust Center > Trust Center Settings > Macro Settings**, check **Trust access to the VBA project object model**. This is required for the build script to import the VBA modules via automation.

### Build

From the repo root:

```powershell
uv run scripts/build.py
```

The first run creates `.venv` and installs the dependencies pinned in `uv.lock`; later runs reuse it.

This launches PowerPoint in the background, imports the modules from `src/modules/`, saves the result as an add-in (`.ppam`), then injects `src/ui/customUI.xml` as the ribbon customization part. The `.ppam` and the installer are packaged into the only file the build writes to `dist/`:

```
All-in-one-v<version>.zip
    Install.cmd
    README.txt
    .bin/            (hidden)
        All-in-one-v<version>.ppam
        Install.ps1
```

The zip is the only release asset. The version must be `MAJOR.MINOR.PATCH` (from `--version`, else from `version` in `pyproject.toml`), because the add-in's update check does not understand pre-release tags.

Installer and changelog templates live in `scripts/templates/`.

#### Update notification

The add-in reads the newest release tag from the GitHub releases feed once a day. When it is newer than the running version, the **Update** group appears. Nothing is downloaded or installed by the add-in.

The page the **Update** button opens is set at build time and is stored in the generated `BuildInfo.bas` together with the version:

```powershell
uv run scripts/build.py --update-url https://example.com/path/to/download-page
```

Without the flag it opens `https://github.com/etoome/All-in-one/releases/latest`. The URL must be `https://` with no quotes or spaces. The changelog link always points to GitHub.

Close PowerPoint first if the add-in is currently loaded, since the build starts its own PowerPoint instance.

#### Testing the update notification

Build a copy that is older than the latest GitHub release, so the **Update** group appears.

1. Lower `version` in `pyproject.toml`, for example to `0.0.1`. Passing `--version 0.0.1` to the build has the same effect without editing the file.
2. Clear the saved check and snooze, because the add-in checks only once a day:

   ```powershell
   Remove-Item "HKCU:\Software\VB and VBA Program Settings\All-in-one\Update" -Recurse -ErrorAction SilentlyContinue
   ```

3. Build and [install](#install) it, then start PowerPoint.
4. Wait a few seconds, then click a slide or shape, because the ribbon refreshes after the next selection or window change. The **Update** group appears at the start of the tab as **Update to v<latest release>**.
5. Check the buttons: **Update** opens the page set with `--update-url`, **What's new** opens the changelog, and **Remind me later** hides the group.
6. Revert the version change before committing:

   ```powershell
   git restore pyproject.toml uv.lock
   ```

Repeat step 2 to run the check again.

### Install

Extract the zip and run the installer from the repository root in PowerShell:

```powershell
Expand-Archive .\dist\All-in-one-v<version>.zip -DestinationPath .\dist\extracted -Force
.\dist\extracted\Install.cmd
```

This copies the `.ppam` into your per-user PowerPoint Add-ins folder and registers it to auto-load. Restart PowerPoint for the tab to appear.

To remove it:

```powershell
.\dist\extracted\Install.cmd -Uninstall
```

Re-run `uv run scripts/build.py` after changing anything under `src/` (it clears `dist/`, including `extracted`), then extract and install again, and restart PowerPoint if the add-in is already loaded.

## Commits and releases

Commits follow [Conventional Commits](https://www.conventionalcommits.org/). To write one interactively, run `uv run cz commit` (or `uv run cz c`) after `uv sync`.

### Releasing

Set up once, then set `GH_TOKEN` in each new shell. The token needs `contents: write` access to this repository.

```powershell
uv sync
$env:GH_TOKEN = "<token>"
```

Start on `main` with a clean working tree. Close PowerPoint before the build step, because the build starts its own PowerPoint instance.

1. **Preview (optional):** show the next version and changelog entry without changing anything.

   ```powershell
   uv run cz bump --dry-run
   ```

2. **Bump:** raise the version in `pyproject.toml` and `uv.lock`, add the new section to `CHANGELOG.md`, commit it as `chore(release): v<version>`, and create the annotated tag `v<version>`. Nothing is built or pushed yet. To override the bump level detected from commits, add `--increment MAJOR`, `MINOR` or `PATCH`.

   ```powershell
   uv run cz bump
   ```

3. **Push:** send the commit and the tag to GitHub.

   ```powershell
   git push origin main --follow-tags
   ```

4. **Build:** write `dist/All-in-one-v<version>.zip`. Its **Update** button opens the GitHub releases page.

   ```powershell
   uv run scripts/build.py
   ```

5. **Publish:** create a draft GitHub Release with the notes from `CHANGELOG.md` and upload the zip. Press Enter to publish it, or Ctrl+C to keep it as a draft.

   ```powershell
   uv run scripts/release.py
   ```

6. **Internal build (optional):** build the same version with a different **Update** page (see [Update notification](#update-notification)). Share the resulting zip yourself. `release.py` refuses it, because the build marks zips made with `--update-url` as not for GitHub. The build clears `dist/`, so run it after step 5.

   ```powershell
   uv run scripts/build.py --update-url <download page>
   ```

Notes:

- Don't run `cz changelog` by itself because it adds an `Unreleased` section.
- The script uploads assets before publishing because immutable releases lock assets once published.
- If an upload fails, the draft stays on GitHub. Delete it and rerun the script.

## References

- [MS-CUSTOMUI2 specification](https://officeprotocoldoc.z19.web.core.windows.net/files/MS-CUSTOMUI2/%5bMS-CUSTOMUI2%5d.pdf)
- [PowerPoint control identifiers](https://github.com/OfficeDev/office-fluent-ui-command-identifiers/blob/main/Microsoft%20365/Current%20Channel/powerpointcontrols.xlsx)
