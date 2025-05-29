<p align="center">
  <img src="assets/logo.png" alt="Obfluence Logo" width="150"/>
</p>
<h1 align="center">Obfluence</h1>
<p align="center"><em>Developer-centric knowledge architecture for Obsidian</em></p>

# 🧩 Development Wiki Templates

This directory contains standardized templates organized by documentation category. Each folder corresponds to a core area of your software project documentation, and includes Templater-ready markdown files that help ensure consistency, structure, and speed.

---

## 📁 Folder Overview

Each numbered folder corresponds to a major section in the documentation system:

- `00_Product` – Feature specs, backlog items, roadmap planning
- `01_Architecture` – Diagrams, decision logs, system components
- `02_Release Notes` – Changelogs and deployment logs
- `03_Operations` – CI/CD, infrastructure, runbooks, readiness
- `04_Working Session Minutes` - Team working session meeting notes
- `05_Meeting Notes` – Retrospectives, stakeholder syncs, team meetings
- `06_Scrum Foundations` – DoD, ceremonies, team goals
- `07_Knowledge Base` – Onboarding, data maps, schemas
- `08_Open Business Question Log` – Questions, answers, and feedback

Each folder contains:

- Reusable markdown templates
- A local `_index.md` that lists and describes available templates
- Metadata in frontmatter to support filtering (e.g., `status`, `owner`, `description`)

---

## 📊 Visual Overview

- [Folder Structure Chart (PNG)](/Obfluence%20Templates/README_TEMPLATES_Folder_Chart.png)
- [Mind Map (Markdown)](/Obfluence%20Templates/README_TEMPLATES_Mindmap.md)

---

## 🛠 Template Metadata Guidelines

Each template should start with frontmatter like:

```yaml
---
description: Short explanation of the template's purpose
status: draft | stable
owner: "@yourname"
tags: [template, area]
---
```

Use consistent tags like `product`, `infra`, `scrum`, `release`, etc.

---

## ✅ Best Practices

- Use `_index.md` in each folder to preview templates dynamically.
- Maintain a central dashboard for high-level access and search.
- Include live Templater prompts for manual template use when applicable.
