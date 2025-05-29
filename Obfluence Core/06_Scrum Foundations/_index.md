# 🌀 Scrum Foundations Index

> This index provides a structured overview of foundational Scrum documentation, including team roles, definitions of done, feature matrices, and sprint goals. Folder contents and descriptions are pulled dynamically from frontmatter where available.

```dataviewjs
const root = "DEVELOPMENT_WIKI/06_Scrum Foundations";

const pages = dv.pages()
  .where(p => p.file.path.startsWith(root + "/") && !["_index", "index"].includes(p.file.name))
  .array();

const folders = {};

// Group pages by folder
for (const page of pages) {
  const relative = page.file.path.replace(root + "/", "");
  const folder = relative.split("/")[0];
  if (!folders[folder]) folders[folder] = [];
  folders[folder].push(page);
}

// Render each folder
for (const folder of Object.keys(folders).sort()) {
  const cleanName = folder.replace(/[_-]/g, " ");
  dv.header(3, `📁 ${cleanName}`);

  const files = folders[folder]
    .filter(p => !["_index", "index"].includes(p.file.name))
    .sort((a, b) => a.file.name.localeCompare(b.file.name));

  if (files.length === 0) {
    dv.paragraph("_No files found._");
    continue;
  }

  for (const f of files) {
	const description = f.file.frontmatter?.description?.trim() || "_No description provided._";
    const modified = f.file.mtime.toFormat("yyyy-MM-dd");
    const wrapper = dv.container.createEl("div", { cls: "custom-dv-card" });
	wrapper.setAttr("style", "border:1px solid #555; border-radius:8px; padding:12px 10px; margin-bottom:10px; background:#1e1e1e;");

    // Obsidian-rendered link
    wrapper.appendChild(dv.el("strong", f.file.link));

    if (description) {
      wrapper.appendChild(dv.el("div", description));
    }

    wrapper.appendChild(dv.el("small", `Last Modified: ${modified}`, { attr: { style: "color:#999;" } }));
  }

  dv.paragraph("---");
}

```