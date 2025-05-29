# 🏡 Obfluence HomeLab

Welcome to your **Obfluence HomeLab** — a structured, developer-centric vault designed to document, manage, and scale all aspects of your self-hosted infrastructure, software experimentation, learning, and systems automation.

This vault uses a Confluence-inspired structure combined with the power of Obsidian plugins like Templater, Dataview, and QuickAdd to offer both structure and flexibility.

---

## 📁 Folder Overview

### `01_Overview/`

High-level architectural diagrams, design goals, and a central jumping-off point for the vault.

### `02_Hardware/`

Details about all physical and virtual infrastructure.

- `Devices/`: Each server, Raspberry Pi, workstation, or VM.
- `Accessories/`: UPS units, mounts, cables, adapters, etc.
- `Network_Gear/`: Switches, routers, APs, and firewalls.

### `03_Software/`

OS and application tooling used in the lab.

- `OS_Images/`: Base operating systems (e.g. Ubuntu, Proxmox).
- `Tools_And_Utilities/`: CLI tools, dashboards, scripts.
- `Platform_Services/`: Portainer, n8n, Gitea, etc.

### `04_Services/`

Everything that is self-hosted and running.

- `Docker_Containers/`: Containerized workloads with Compose or Podman.
- `Bare_Metal_Services/`: Natively installed applications.
- `Reverse_Proxy/`: Traefik, Nginx, Caddy, etc.

### `05_Network/`

Network architecture, IP planning, VLAN design, and firewall policy.

- `IP_Management/`: DHCP reservations, subnets.
- `VLANs/`: Segmentation and isolation plans.
- `Firewall_Rules/`: Manual and automated rulesets.

### `06_Dev_Environments/`

Development stacks for software/web projects.

- `Web_Projects/`: Static sites, frameworks (Vue, React, etc).
- `APIs/`: REST, GraphQL, service endpoints.
- `Databases/`: PostgreSQL, MongoDB, SQLite, etc.

### `07_Learning/`

Track progress and content from educational pursuits.

- `Courses/`: Online courses (e.g., Udemy, Coursera).
- `Labs/`: Practical exercises, network or dev labs.
- `Notes/`: Topic-based notes and research summaries.

### `08_Automation/`

Schedules, scripts, and reactive workflows.

- `Cron_Jobs/`: Scheduled command tasks.
- `Scripts/`: Shell, Python, Node.js, etc.
- `Webhooks/`: Triggered actions between services.

### `09_Security/`

Security hardening, audits, and risk analysis.

- `Hardening_Checklists/`: OS, Docker, SSH, firewall best practices.
- `Audit_Logs/`: Changes, access logs, intrusion attempts.
- `Threat_Models/`: Risk assessments and mitigations.

### `10_Monitoring/`

Observability tooling and configurations.

- `Grafana_Dashboards/`: JSON exports, layout explanations.
- `Alerts/`: Conditions, thresholds, and notification logic.
- `Logs/`: Collected logs (Promtail, Vector, etc.).

### `11_Troubleshooting/`

Issue history, fixes, and resolution paths.

- `System_Errors/`: OS, service failures, boot loops.
- `Networking_Issues/`: DNS, VLAN misrouting, blocked ports.
- `Upgrade_Failures/`: Patch failures, upgrade logs.

### `12_Changelogs/`

Versioned updates to your lab — hardware changes, deployments, upgrades.

### `99_Credentials/`

🔐 **Sensitive metadata only** — passwords and keys should be stored in a secure password manager (e.g., 1Password, Bitwarden).

- `API Keys/`
- `Service Accounts/`
- `SSH Keys/`
- `Vault Backups/`

> [!warning] NEVER store raw passwords, tokens, or private keys here. Use this space to link to entries or describe usage context only.

---

## ⚙️ Suggested Plugins

- **Templater** – Auto-generating structured notes
- **Dataview** – Table/list summaries for `_index.md` dashboards
- **QuickAdd** – Capture new device/service/project notes with prompts
- **Obsidian Encrypt** – For encrypting local credential notes
- **Advanced Tables** – For editing inventory/logs
- **Canvas** – Architecture and rack layout boards
- **Periodic Notes + Calendar** – For operational logs and journaled change tracking

---

## 📌 Usage Tips

- Use `_index.md` in each folder to dynamically show child notes using `Dataview`.
- Templates ensure every note has standard fields like title, tags, description, and date.
- Add task lists for maintenance and link to system dashboards.
- Use QuickAdd to reduce friction when adding new entries.

---

Maintain your lab documentation as carefully as your systems — you’ll thank yourself when scaling, debugging, or recovering!
