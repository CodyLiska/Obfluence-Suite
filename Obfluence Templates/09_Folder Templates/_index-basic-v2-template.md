---
created: '2025-05-23'
description: ''
status: draft
tags: []
title: _Index Basic V2
system: ''
owner: ''
---


# 🏗️ Architecture Overview
This section outlines the high-level system design and technical decisions.
```dataviewjs
const root = "DEVELOPMENT_WIKI/01_Architecture";

const pages = dv.pages().where(p => p.file.path.startsWith(root + "/") && p.file.name !== "_index").array();

// Group by subfolder (relative to the root)
const groups = {};
for (const page of pages) {
  const relativePath = page.file.folder.replace(root + "/", "");
  const subfolder = relativePath.split("/")[0] || "(Root)";
  if (!groups[subfolder]) groups[subfolder] = [];
  groups[subfolder].push(page);
}

// Render each subfolder with its own heading
for (const folder of Object.keys(groups).sort()) {
  dv.header(3, folder);  // ### Folder Name
  const sorted = groups[folder].sort((a, b) => a.file.name.localeCompare(b.file.name));
  dv.list(sorted.map(p => p.file.link));
}
```