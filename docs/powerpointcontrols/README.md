# PowerPoint Fluent UI Command Identifiers (idMso Reference)

Markdown conversion of the official Office Fluent UI command identifier spreadsheet for PowerPoint ([source](https://github.com/OfficeDev/office-fluent-ui-command-identifiers/blob/main/Microsoft%20365/Current%20Channel/powerpointcontrols.xlsx)). Use it to look up the `idMso` value of a built-in control for [src/ui/customUI.xml](../../src/ui/customUI.xml) ribbon customizations (e.g. `<button idMso="..."/>`, `insertAfterMso`, `insertBeforeMso`).

Split into files by where the control appears, to keep each file small enough for an agent to load on demand:

- [core-tabs.md](core-tabs.md) — Controls on PowerPoint's always-visible core ribbon tabs (Home, Insert, Design, etc.), grouped by tab then ribbon group.
- [contextual-tabs.md](contextual-tabs.md) — Controls on contextual tool tabs that appear only when a relevant object is selected (Picture Tools, Chart Tools, Table Tools, etc.), grouped by tab set then sub-tab.
- [context-menus.md](context-menus.md) — Controls in right-click context menus, plus the list of context menu `idMso` identifiers themselves.
- [other.md](other.md) — Backstage view (File tab), Quick Access Toolbar defaults, and commands not placed on the ribbon by default.

## Columns

- **idMso** — the control's identifier; pass as the `idMso` attribute on a customUI XML element.
- **Type** — the control type (`button`, `toggleButton`, `gallery`, `menu`, `splitButton`, `group`, `tab`, etc.), which maps to the XML element name to use.
- **Group** / **Tab** — the built-in ribbon group or tab the control normally lives in.
- **Parent** — the built-in menu/splitButton/gallery that contains the control, when nested (shown as `Parent > Parent2` for doubly-nested controls).

Rows with no `idMso` (unnamed internal entries) and the Policy ID column from the source spreadsheet are omitted as not relevant to ribbon customization.
