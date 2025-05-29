---
created: <% tp.date.now("YYYY-MM-DD") %>
folder: <% tp.file.folder(false) %>
title: _Index Templater
description: ''
tags:
- template
status: draft
system: ''
owner: ''
---

# 📁 <% tp.file.folder(false) %> Templates Index

Welcome to the **<% tp.file.folder(false) %>** section of the documentation.

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