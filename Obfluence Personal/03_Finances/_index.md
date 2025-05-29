# Finances Dashboard

```dataview
table file.name as Entry, description, status
from "03_Finances"
where file.name != "_index"
sort file.name desc
```
