---
title: "Error Code Reference"
created: 2025-05-23
description: "Table of error codes, descriptions, HTTP mappings, and resolutions."
tags: ["template"]
status: draft
system: ""
owner: ""
---

# Error Code Reference – <% tp.file.title %>

| Code | Name         | HTTP | Description             | Resolution            |
|------|--------------|------|-------------------------|------------------------|
| 1001 | Missing Auth | 401  | No auth header provided | Send token with request |
| 2002 | Invalid ID   | 404  | ID not found            | Verify ID is correct   |
