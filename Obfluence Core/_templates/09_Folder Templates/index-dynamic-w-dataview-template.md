---
tags: []
status: draft
created: '2025-05-23'
description: ''
title: Index Dynamic W Dataview
system: ''
owner: ''
---


# Folder Template Index

### Data View code

const root = "DEVELOPMENT_WIKI/03_Operations"; // ← change as needed

const pages = dv.pages()
  .where(p => p.file.path.startsWith(root + "/") && !["_index", "index"].includes(p.file.name))
  .array();

const folders = {};

for (const page of pages) {
  const relative = page.file.path.replace(root + "/", "");
  const folder = relative.split("/")[0];
  if (!folders[folder]) folders[folder] = [];
  folders[folder].push(page);
}

for (const folder of Object.keys(folders).sort()) {
  const cleanName = folder.replace(/[_-]/g, " ");
  dv.header(3, `📁 ${cleanName}`);

  const files = folders[folder]
    .filter(p => !["_index", "index"].includes(p.file.name))
    .sort((a, b) => a.file.name.localeCompare(b.file.name));

  if (files.length === 0) {
    dv.paragraph("_No files found._");
  } else {
    const tableRows = files.map(f => [
      f.file.link,
      f.file.frontmatter?.description ?? "",
      f.file.mtime.toFormat("yyyy-MM-dd")
    ]);
    dv.table(["File", "Description", "Last Modified"], tableRows);
  }
}

