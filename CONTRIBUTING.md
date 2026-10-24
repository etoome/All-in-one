# Contributing

## Workflow

Contributions are made through a fork and pull request:

1. Fork this repository on GitHub.
2. Clone your fork and create a branch for your change.
3. Make your changes, then [build](#building) and test the add-in in PowerPoint.
4. Commit using [Conventional Commits](#commits-and-releases) and push the branch to your fork.
5. Open a pull request from your branch to this repository's `main` branch.

Only maintainers run the release steps under [Commits and releases](#commits-and-releases).

## Building

`scripts/build.py` packages the sources under `src/` into `dist/All-in-one-v<version>.ppam`, a PowerPoint add-in you install once and use across all presentations.

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

This launches PowerPoint in the background, imports the modules from `src/modules/`, saves the result as `dist/All-in-one-v<version>.ppam`, then injects `src/ui/customUI.xml` as the ribbon customization part. It also renders `dist/Install.ps1` for release and local installation. The release assets are:

```
Install.ps1
All-in-one-v<version>.ppam
```

The version comes from `--version`, else from `version` in `pyproject.toml`.

Installer and changelog templates live in `scripts/templates/`.

Close PowerPoint first if the add-in is currently loaded, since the output file is locked while in use.

### Install

Run from the repository root in PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".\dist\Install.ps1"
```

This copies the `.ppam` into your per-user PowerPoint Add-ins folder and registers it to auto-load. Restart PowerPoint for the tab to appear.

To remove it:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".\dist\Install.ps1" -Uninstall
```

Re-run `uv run scripts/build.py` after changing anything under `src/`, then run `powershell -NoProfile -ExecutionPolicy Bypass -File ".\dist\Install.ps1"` again (or restart PowerPoint if the add-in is already loaded) to pick up the changes.

## Commits and releases

Commits follow [Conventional Commits](https://www.conventionalcommits.org/). To write one interactively, run `uv run cz commit` (or `uv run cz c`) after `uv sync`.

### Releasing

Set up once, then set `GH_TOKEN` in each new shell. The token needs `contents: write` access to this repository.

```powershell
uv sync
$env:GH_TOKEN = "<token>"
```

Start on `main` with a clean working tree and PowerPoint closed, because the bump runs the build.

1. **Preview (optional):** `uv run cz bump --dry-run` shows the next version and changelog without changing anything.
2. **Bump:** `uv run cz bump` updates the version in `pyproject.toml` and `CHANGELOG.md`, builds the assets into `dist/`, commits `chore(release): v<version>`, and creates an annotated local tag. To override the bump level detected from commits, add `--increment MAJOR`, `MINOR` or `PATCH`.
3. **Push:** `git push origin main --follow-tags`.
4. **Publish:** `uv run scripts/release.py` creates a draft GitHub Release that uses the notes from `CHANGELOG.md`, then uploads the assets. Press Enter to publish it, or Ctrl+C to keep it as a draft.

Notes:

- Don't run `cz changelog` by itself because it adds an `Unreleased` section.
- The script uploads assets before publishing because immutable releases lock assets once published.
- If an upload fails, the draft stays on GitHub. Delete it and rerun the script.

## References

- [MS-CUSTOMUI2 specification](https://officeprotocoldoc.z19.web.core.windows.net/files/MS-CUSTOMUI2/%5bMS-CUSTOMUI2%5d.pdf)
- [PowerPoint control identifiers](https://github.com/OfficeDev/office-fluent-ui-command-identifiers/blob/main/Microsoft%20365/Current%20Channel/powerpointcontrols.xlsx)
