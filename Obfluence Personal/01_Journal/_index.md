# Journal Dashboard

```dataview
table date, status, description
from "01_Journal"
where file.name != "_index"
sort file.name desc
```
