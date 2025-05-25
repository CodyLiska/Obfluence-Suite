---
title: "Schemas and Data Maps"
created: 2025-05-23
description: "Documents key database schemas, field mappings, and integration structures."
tags: ["template", "knowledge-base"]
status: draft
system: ""
owner: ""
---

# 🧬 Schemas and Data Maps – <% tp.file.title %>

## 📄 Overview
- This document describes the data models, schema relationships, and key mappings between systems.

## 🗂️ Entities

| Entity Name | Description              | Primary Key | Relationships           |
|-------------|--------------------------|-------------|--------------------------|
| User        | End user profile         | user_id     | HasMany Orders          |
| Order       | Purchase transaction     | order_id    | BelongsTo User          |
| Product     | Item for sale            | product_id  | HasMany Orders          |

## 🔄 Field Mappings (Example: API → DB)

| API Field      | DB Field        | Type    | Notes                     |
|----------------|----------------|---------|---------------------------|
| `email`        | `user.email`   | string  | Required                  |
| `created_at`   | `order.date`   | datetime| Converted to UTC          |
| `total_price`  | `order.amount` | decimal | Includes tax and shipping |

## 🧠 Notes
- Data synced via Change Data Capture (CDC)
- Mapping subject to version control

> _Use this template to standardize documentation across systems and integrations._
