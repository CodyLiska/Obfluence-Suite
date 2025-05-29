---
title: "CI/CD Pipeline"
created: 2025-05-23
description: "Defines the CI/CD pipeline, tools, stages, and readiness checks."
tags: ["template"]
status: draft
system: ""
owner: ""
---

# CI/CD Pipeline – <% tp.file.title %>

## 🛠️ Tooling
- CI Provider: GitHub Actions
- CD Provider: ArgoCD / GitHub Actions
- Orchestration: Docker / Kubernetes

## 🧱 Pipeline Stages
1. Linting & Pre-Checks
2. Build & Compile
3. Testing
4. Deployment
5. Notifications

## 🔐 Secrets Management
- Managed via: GitHub Secrets / Vault

## ✅ Readiness Checklist
- [ ] CI on all branches
- [ ] CD deploys from main
- [ ] Rollback available
- [ ] Notifications enabled
