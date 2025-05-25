---
tags: []
status: draft
created: '2025-05-23'
description: ''
title: _Index
---

# Working Session Templates Index
```dataviewjs
const folder = dv.current().file.folder;
const pages = dv.pages()
  .where(p => p.file.folder === folder && p.file.name !== "_index")
  .sort(p => p.file.name, 'asc');
for (let page of pages) {
  const desc = page.file.frontmatter?.description ?? "";
  dv.paragraph(`- ${page.file.link}${desc ? " — " + desc : ""}`);
}
```