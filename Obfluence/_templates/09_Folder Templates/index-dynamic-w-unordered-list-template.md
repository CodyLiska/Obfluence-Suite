---
created: '2025-05-23'
description: ''
status: draft
tags: []
title: Index Dynamic W Unordered List
system: ''
owner: ''
---


# Folder Template Index

### Data View code

const root = "DEVELOPMENT_WIKI/01_Architecture"; // ← change as needed

const pages = dv.pages()
  .where(p => p.file.path.startsWith(root + "/") && !["_index", "index"].includes(p.file.name))
  .sort(p => p.file.path, 'asc')
  .array();

// Build folder tree
const tree = {};

for (const page of pages) {
  const parts = page.file.path.replace(root + "/", "").split("/");
  let branch = tree;

  for (let i = 0; i < parts.length; i++) {
    const part = parts[i];
    const isFile = i === parts.length - 1;

    if (isFile) {
      if (!branch.files) branch.files = [];
      branch.files.push({ name: part, page });
    } else {
      if (!branch[part]) branch[part] = {};
      branch = branch[part];
    }
  }
}

// Recursive rendering
function render(branch, depth = 0) {
  const indent = " ".repeat(depth * 2); // full-width spacing for hierarchy

  for (const key of Object.keys(branch).filter(k => k !== "files").sort()) {
    const heading = key.replace(/_/g, " ").replace(/-/g, " ");
    dv.paragraph(`${indent}**${heading}**`);
    render(branch[key], depth + 1);
  }

  if (branch.files) {
    for (const file of branch.files.sort((a, b) => a.name.localeCompare(b.name))) {
      const desc = file.page.file.frontmatter?.description ?? "";
      const descText = desc ? ` — _${desc}_` : "";
      dv.paragraph(`${indent}- ${file.page.file.link}${descText}`);
    }
  }
}

render(tree);

