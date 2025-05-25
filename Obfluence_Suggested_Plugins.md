# 🔌 Suggested Plugins for Obfluence

The following plugins are recommended to fully power the Obfluence documentation system inside Obsidian. These enable dynamic templating, metadata filtering, recursive folder indexing, and enhanced visual UX.

---

## 🧠 Core Plugins

### 1. **Templater**
- **Use Case**: Automate note creation with frontmatter prompts, dynamic variables, folder-based logic, and conditional logic.
- **URL**: https://github.com/SilentVoid13/Templater
- **Features**:
  - Pre-filled templates for retros, CI/CD, specs, etc.
  - Smart logic: `tp.user.input`, `tp.date.now()`, `tp.file.folder(true)`

---

### 2. **Dataview**
- **Use Case**: Query and render dynamic indexes, dashboards, and metadata tables.
- **URL**: https://github.com/blacksmithgu/obsidian-dataview
- **Features**:
  - Recursive folder trees
  - Dashboards for `status`, `system`, `tags`, etc.
  - Inline cards and lists sorted dynamically

---

### 3. **MetaEdit**
- **Use Case**: Toggle and edit YAML frontmatter fields from the command palette.
- **URL**: https://github.com/chhoumann/obsidian-metaedit-plugin
- **Features**:
  - Update `status`, `owner`, or `tags` with hotkeys
  - Toggle between predefined values
  - Clean YAML editing without opening raw frontmatter

---

## 📘 Visual & Utility Plugins

### 4. **Advanced Tables**
- **Use Case**: Easily edit markdown tables, including those used in specs, matrices, and goals.
- **URL**: https://github.com/tgrosinger/advanced-tables-obsidian
- **Features**:
  - Auto-align pipes
  - Tab through columns
  - Great for documentation tables

---

### 5. **Buttons (optional)**
- **Use Case**: Create interactive buttons in notes for common actions or template calls.
- **URL**: https://github.com/shabegom/buttons
- **Features**:
  - Create new notes from templates
  - Trigger Templater macros
  - Add visual call-to-action areas

---

### 6. **Folder Notes (optional)**
- **Use Case**: Treat `_index.md` as the folder’s main page (like Confluence does).
- **URL**: https://github.com/Vinzent03/obsidian-folder-note-core
- **Features**:
  - Click folder → open `_index.md`
  - Cleaner navigation

---

## 🧰 Bonus & Nice-to-Have Plugins

### 7. **QuickAdd**
- **Use Case**: Create new notes using dropdowns and macros tied to Templater.
- **URL**: https://github.com/chhoumann/quickadd
- **Features**:
  - Folder-aware template choices
  - Input prompts for fast doc creation

---

### 8. **Calendar**
- **Use Case**: Visualize meeting and session notes chronologically.
- **URL**: https://github.com/liamcain/obsidian-calendar-plugin

---

## ✅ Installation Tips
- Enable **Safe Mode** off in Obsidian.
- Go to **Settings → Community Plugins → Browse** and install each.
- Configure plugin settings to match the structure of the Obfluence vault (e.g., Templater folder, Dataview refresh).

