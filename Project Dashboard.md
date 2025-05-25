# 📊 Project Dashboard

This dashboard dynamically summarizes the project documentation using frontmatter metadata.

## ✅ Projects by Status

```dataview
table status as "Status", file.link as "Project", system as "System", owner as "Owner", file.mtime as "Last Modified"
from "DEVELOPMENT_WIKI"
where status
group by status
sort file.mtime desc
```

## 🔧 Projects by System

```dataview
table system as "System", file.link as "Project", status as "Status", owner as "Owner", file.mtime as "Last Modified"
from "DEVELOPMENT_WIKI"
where system
group by system
sort file.mtime desc
```

## 👤 Projects by Owner

```dataview
table owner as "Owner", file.link as "Project", status as "Status", system as "System", file.mtime as "Last Modified"
from "DEVELOPMENT_WIKI"
where owner
group by owner
sort file.mtime desc
```

## 🕒 Recently Modified Projects

```dataview
table file.link as "Project", status as "Status", system as "System", owner as "Owner", file.mtime as "Last Modified"
from "DEVELOPMENT_WIKI"
sort file.mtime desc
limit 10
```
