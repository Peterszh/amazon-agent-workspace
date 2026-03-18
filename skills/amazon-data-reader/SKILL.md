---
name: amazon-data-reader
description: Interpret Amazon operational datasets including sales, traffic, conversion, and ads snapshots.
---

# Amazon Data Reader

Use this skill when Amazon business data is provided.

## Expected inputs
- sales
- orders
- sessions
- conversion
- ads metrics
- price and promotion notes
- review notes if available

## Rules
- Summarize what is known first
- Flag unclear or missing fields
- Do not over-interpret incomplete data

## Output
Return:
1. known_metrics
2. suspicious_changes
3. required_followups
