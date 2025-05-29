# Goals Overview

```dataview
table file.name as Goal, status, date, description
from "07_Goals"
where file.name != "_index"
sort file.name desc
```
