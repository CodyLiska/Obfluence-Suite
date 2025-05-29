---
tags: []
status: Draft
date: <% tp.date.now("YYYY-MM-DD") %>
title: <% tp.file.title %>
created: <% tp.date.now("YYYY-MM-DD") %>
description:
system:
owner:
location:
ip:
mac:
---

# Hardening Checklist: <% tp.file.title %>

## SSH Security
- [ ] Disable password login
- [ ] Enable SSH key-only auth
- [ ] Change default port

## OS/Kernel
- [ ] Enable automatic updates
- [ ] Configure auditd

## Application Layer
- [ ] Enable firewall
- [ ] Remove unused packages

> [!warning] Ensure changes are tested in dev first

## Related Systems
- [[Device: ]]
- [[Service: ]]

## Changelog
- <% tp.date.now("YYYY-MM-DD") %>: Initial checklist
