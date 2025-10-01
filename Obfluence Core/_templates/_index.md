# Obfluence Core Templates Index

```dataviewjs
const root = "98__obsidian templates/Obfluence Core/_templates";
const pages = dv.pages()
  .where(p => p.file.path.startsWith(root + "/") && !["_index", "index"].includes(p.file.name))
  .array();

function buildTree(pages) {
  const tree = {};
  for (const page of pages) {
    const rel = page.file.path.replace(root + "/", "");
    const parts = rel.split("/");

    let branch = tree;
    for (let i = 0; i < parts.length; i++) {
      const seg = parts[i];
      if (i === parts.length - 1) {
        if (!branch.files) branch.files = [];
        branch.files.push(page);
      } else {
        if (!branch[seg]) branch[seg] = {};
        branch = branch[seg];
      }
    }
  }
  return tree;
}

function renderTree(tree, depth = 1) {
  for (const key of Object.keys(tree).filter(k => k !== "files").sort()) {
  const clean = key.replace(/[_-]/g, " ");
  const folderHeader = dv.container.createEl("h" + (depth + 1));
  folderHeader.setAttr("style", `margin-left: ${depth * 20}px;`);
  folderHeader.textContent = `folder header: ${clean}`;

  renderTree(tree[key], depth + 1);
}

    if (tree.files) {
    for (const f of tree.files.sort((a, b) => a.file.name.localeCompare(b.file.name))) {
      const desc = f.file.frontmatter?.description?.trim() || "_No description provided._";
      const modified = f.file.mtime.toFormat("yyyy-MM-dd");
      const wrapper = dv.container.createEl("div", { cls: "custom-dv-card" });

      // Optional styling for indentation
      wrapper.setAttr(
        "style",
        `border:1px solid #444; border-radius:8px; padding:12px 10px; margin-bottom:10px; background:#111; margin-left:${depth * 20}px;`
      );

      wrapper.appendChild(dv.el("strong", f.file.link));
      wrapper.appendChild(dv.el("div", desc, { attr: { style: "color:#bbb;" } }));
      wrapper.appendChild(dv.el("small", `Last Modified: ${modified}`, { attr: { style: "color:#777;" } }));
    }
  }
}
const tree = buildTree(pages);

renderTree(tree);
```
