# 🚀 Release Notes Index

> This index provides a structured overview of product release documentation, including version changes, feature launches, and bug fix summaries. Folder contents and descriptions are pulled dynamically from frontmatter where available.
```dataview
table file.name as "Version", file.mtime as "Last Modified"
from "DEVELOPMENT_WIKI/02_Release Notes"
where file.name != "index" and file.name != "_index"
sort file.name desc
```
