# 📘 Obfluence

**Obfluence** is a modular, opinionated Obsidian framework designed to bring the structure and scalability of Confluence to your personal knowledge base.

This repository contains three main Obsidian vault templates:

- 🔹 `Obfluence Core`: foundational layouts, templates, and best practices
- 🧑‍💻 `Obfluence HomeLab`: organize, document, and automate your self-hosted infrastructure
- 🧠 `Obfluence Personal`: track your goals, habits, health, finances, and daily life

Each vault is fully modular and extensible — plug them into your own workflows or use them as-is to level up your digital organization.

---

## 📂 Vaults Included

### `📘 Obfluence Core`
A minimal starting point for any knowledge system built in Obsidian.
- Core folder structure (`00_Reference`, `01_Projects`, etc.)
- Confluence-style `_index.md` dashboards using Dataview
- Standardized Templater templates
- Plugin recommendations and vault settings

### `🧑‍💻 Obfluence HomeLab`
Built for developers, sysadmins, and homelab enthusiasts.
- Tracks infrastructure, software, services, network, and monitoring
- Includes automation, credential metadata, changelogs, and security hardening
- Canvas dashboards and QuickAdd workflows included

### `🧠 Obfluence Personal`
Designed for your life outside of tech.
- Manage health, journaling, goals, relationships, finances, and learning
- Habit tracker with automation
- Weekly and monthly planning templates
- Canvas dashboards for daily life and long-term vision

---

## 🛠️ How to Use

1. **Download or clone this repo**:
   ```bash
   git clone https://github.com/yourname/obfluence.git
   ```

2. **Open the vault of your choice in Obsidian**:
   - Launch Obsidian → `Open folder as vault` → Select the collection

3. **Install required plugins**:
   Each vault includes a `README.md` listing recommended community plugins such as:
   - `Templater`
   - `Dataview`
   - `QuickAdd`
   - `Calendar`
   - `Advanced Tables`
   - `Obsidian Encrypt` (for sensitive data)

4. **Use QuickAdd to create new entries**:
   - Vaults include `quickadd.json` with ready-made macros for each subfolder

5. **Start documenting**:
   - All folders use `_index.md` dashboards to show contents
   - Use the included templates for consistency

---

## 📦 Folder Layout (Each Vault)

```text
├── README.md
├── templates/
├── .obsidian/
│   └── plugins/
├── quickadd.json
└── 01_Projects/
    ├── Subtopic/
    │   └── template.md
    └── _index.md
```

---

## 🧱 Built With

- [Obsidian](https://obsidian.md) — local-first markdown knowledge management
- [Dataview Plugin](https://github.com/blacksmithgu/obsidian-dataview)
- [Templater Plugin](https://github.com/SilentVoid13/Templater)
- [QuickAdd Plugin](https://github.com/chhoumann/quickadd)
- [Canvas](https://help.obsidian.md/Canvas)

---

## 🤝 Contributing

Have ideas or want to share your own templates? PRs are welcome!

- Create a new branch
- Add your contribution under the appropriate vault
- Include a short description in the pull request

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 💬 Feedback & Community

If you find Obfluence helpful, feel free to star the repo, open an issue, or share it with other Obsidian users!
