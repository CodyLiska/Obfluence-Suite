---
tags: [habit, weekly]
date: <% tp.date.now("YYYY-[W]WW") %>
title: Habit Tracker - Week <% tp.date.now("WW") %>
week: <% tp.date.now("GGGG-[W]WW") %>
---

# 🧠 Habit Tracker – Week <% tp.date.now("WW") %>

Track your habits daily. Add or remove rows as needed.

| Habit        | Mon | Tue | Wed | Thu | Fri | Sat | Sun |
|--------------|-----|-----|-----|-----|-----|-----|-----|
| Workout      | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| Read 30 min  | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| Meditate     | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |

## 🔁 Notes
- Streak maintained?
- Any blockers or friction?

## 📊 Habit Summary
```dataview
table Habit, sum(Completed) as "Total"
from "07_Goals"
where contains(file.name, "Habit Tracker") and week = this.week
flatten regexreplace(text, "[\[\]]", "") as checkboxes
flatten length(split(checkboxes, "x")) as Completed
group by Habit
```

> [!tip] Use QuickAdd to generate this every Sunday or Monday with correct week number.
