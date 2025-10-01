# Working Session Notes Index

> This index provides a structured overview of collaborative working sessions, capturing decisions, whiteboard discussions, and brainstorming outcomes.

```dataview
table file.name as "Session", file.mtime as "Date"
from "Obfluence Core/04_Working Session Minutes"
where file.name != "index" and file.name != "_index"
sort file.mtime desc
```
