# Task Queries

## ✅ All Open Tasks in Vault
```dataview
task
from ""
where !completed
```

## 🎯 Open Tasks in Goals Folder
```dataview
task
from "07_Goals"
where !completed
```

## 🔁 Repeating Tasks (Tag: #habit)
```dataview
task
from "07_Goals"
where contains(tags, "#habit") and !completed
```
