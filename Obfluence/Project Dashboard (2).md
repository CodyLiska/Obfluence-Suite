# 📊 Project Dashboard

Welcome to the Development Wiki project overview. This dashboard helps you monitor and manage the structure, status, and metadata of your documentation system.

---

## ✅ Overview Stats (Dynamic)

```dataview
table length(rows) as "File Count"
from "DEVELOPMENT_WIKI"
group by contains(file.name, "_index") = false and file.name != "index"
```

---

## 🧩 Template Summary

```dataview
table file.link as "Template", status, owner, system, file.mtime as "Updated"
from "Development Wiki Templates"
where file.name != "_index" and status
sort file.mtime desc
```

---

## 📂 Recently Modified Docs

```dataview
table file.link as "Document", file.mtime as "Modified"
from "DEVELOPMENT_WIKI"
where file.name != "_index"
sort file.mtime desc
limit 10
```

---

## 🔍 Search by Owner / System / Status

```dataview
table file.link as "Doc", status, system, owner, file.mtime
from "DEVELOPMENT_WIKI"
where file.name != "_index" and (status or system or owner)
sort file.mtime desc
```

---

## 🗂 Suggested Filters
- `status:: draft`, `status:: stable`
- `system:: product`, `system:: architecture`
- `owner:: @you`, `owner:: @teammate`

> Tip: Add `tags::` or `priority::` if you want to extend filtering capabilities.
