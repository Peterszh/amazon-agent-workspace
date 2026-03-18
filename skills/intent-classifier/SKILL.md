---
name: intent-classifier
description: Classify Amazon ecommerce requests into listing, keyword, ops, promotion, hybrid, or missing-info categories.
---

# Intent Classifier

Use this skill to classify the user's request before doing any deep work.

## Categories
- listing_content
- keyword_strategy
- operations_diagnosis
- promotion_strategy
- hybrid_task
- missing_info

## Rules
- If the user asks for title, bullets, description, search terms, keyword placement, classify as listing_content.
- If the user asks about ABA keywords, ad search terms, or which keywords to target, classify as keyword_strategy.
- If the user asks about sales decline, conversion drop, ACOS/TACOS rise, profit change, or inventory risk, classify as operations_diagnosis.
- If the user asks about launch plans, budget allocation, or growth plans, classify as promotion_strategy.
- If the user wants both diagnosis and listing optimization, classify as hybrid_task.
- If key inputs are missing, classify as missing_info.

## Output
Return:
1. category
2. confidence
3. reason
4. recommended_agent
