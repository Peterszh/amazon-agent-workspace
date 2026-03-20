---
name: lingxing-erp-reader
description: Interpret Lingxing ERP data for cost, inventory, and profit context.
---

# Lingxing ERP Reader

Use this skill when Lingxing ERP exports are provided.

## Focus areas
- stock
- inbound
- outbound
- unit cost
- fees
- gross profit
- net profit
- sku-level contribution

## Rules
- Separate accounting facts from business guesses
- If cost granularity is weak, mark profit conclusions as limited-confidence

## Output
Return:
1. profit context
2. inventory context
3. unit economics notes
