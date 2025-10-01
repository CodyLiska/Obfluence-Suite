# HomelabFluence Obsidian Vault – Recommended Plugin Setup

This guide outlines the best plugins and configuration for enhancing your Obfluence Home Lab using Obsidian.

---

## Core Enhancements

### Templater

- Use dynamic templates with fields like `title`, `date`, etc.
- Integrates with QuickAdd.
- Set your Templater folder to `.obsidian/templates/`.

### Dataview

- Query and display note properties (frontmatter).
- Used for dynamic `_index.md` folder dashboards.

```dataview
list
from "02_Hardware/Devices"
where file.name != "_index"
```

### QuickAdd

- Easily create templated notes in the right folder.
- Configure with the included `quickadd.json`.

### Calendar + Periodic Notes

- Adds a visual calendar to log and track daily or weekly maintenance.
- Periodic Notes integrates with Calendar for structured journaling.

---

## Security & Credentials

### Obsidian Encrypt / Safe / Vault

- Encrypt notes individually.
- Recommended for `00_Credentials/` folder.

### Obsidian Git

- Sync your vault to a private repository.
- Add this to `.gitignore`:
  ```
  00_Credentials/
  ```

---

## Technical Utilities

### Advanced Tables

- Makes table editing easier.
- Use for inventory, network maps, etc.

### Shell Commands

- Run scripts like:
  - `uptime`
  - `docker ps`
  - `journalctl -xe`

---

## Developer Experience

### Code Block Enhancer

- Adds:
  - Syntax highlighting
  - Line numbers
  - Copy buttons

### Markdown Formatting Assistant

- Helps with bold, links, callouts, etc.

### Tag Wrangler

- Rename, delete, and merge tags used across the vault.

---

## Optional UI Enhancements

### Homepage

- Auto-loads a start page (`_index.md`) when opening the vault.

### Sliding Panes

- Better tabbed layout, similar to Notion or VSCode.

### Hover Editor

- Opens links in floating editor panes.

### Canvas

- Visual planning for:
  - Rack layout
  - Network diagram
  - System architecture

---

## Setup Tips

1. Place your `*.md` templates under `.obsidian/templates/HomeLab/`
2. Configure QuickAdd to use those templates
3. Use `Dataview` in `_index.md` files for dynamic folder dashboards
4. Exclude sensitive folders from Git or Sync
5. Encrypt credentials using Obsidian Encrypt or link them from 1Password

---

## Need More?

Ask me for:

- Daily/Weekly note templates
- Encrypted note automation
- Canvas network diagram templates
