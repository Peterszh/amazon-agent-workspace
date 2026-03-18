---
name: missing-info-checker
description: Detect missing required fields for Amazon listing or operations tasks.
---

# Missing Info Checker

Use this skill to detect whether the user has provided enough information.

## For listing tasks
Check:
- marketplace
- product name
- core features
- target audience
- ABA keywords
- ad search term report
- current listing text (if optimization)

## For operations tasks
Check:
- marketplace
- asin or sku
- time range
- sales data
- traffic data
- conversion data
- ads data
- erp profit data
- inventory data

## Rule
- Never assume a critical metric exists if the user did not provide it.
- If enough info exists for a partial answer, return a partial-answer plan.

## Output
Return:
1. missing_fields
2. can_proceed_partially
3. risk_if_proceeding
4. best_next_step
