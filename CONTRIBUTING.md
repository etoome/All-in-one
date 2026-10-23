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

The installer template lives in `scripts/installer/`.

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

Commits follow [Conventional Commits](https://www.conventionalcommits.org/). One-time setup (requires [uv](https://docs.astral.sh/uv/) and a GitHub token with `contents: write` access to this repository, exported as `GH_TOKEN`):

```powershell
uv sync
$env:GH_TOKEN = "<token>"
```

- `uv run cz commit` (or `uv run cz c`) prompts for type, scope and message, then commits.
- `uv run semantic-release version` bumps the version from the commits since the last tag (`feat` = minor, `fix` = patch, breaking = major), updates `CHANGELOG.md` and `uv.lock`, builds the release assets, commits, tags `v<version>` and pushes. `uv run semantic-release publish` then creates the GitHub Release with `Install.ps1` and the versioned `.ppam` attached. Close PowerPoint first.
- `uv run semantic-release --noop version` previews the release without changing anything; `--major`, `--minor` or `--patch` overrides the level.

## References

- [MS-CUSTOMUI2 specification](https://officeprotocoldoc.z19.web.core.windows.net/files/MS-CUSTOMUI2/%5bMS-CUSTOMUI2%5d.pdf)
- [PowerPoint control identifiers](https://github.com/OfficeDev/office-fluent-ui-command-identifiers/blob/main/Microsoft%20365/Current%20Channel/powerpointcontrols.xlsx)
