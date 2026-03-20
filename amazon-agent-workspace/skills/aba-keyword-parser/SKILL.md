---
name: aba-keyword-parser
description: Parse Amazon ABA keyword data and identify high-value relevant keywords.
---

# ABA Keyword Parser

Use this skill when the user provides ABA keyword data.

## Goals
- Identify high-relevance keywords
- Separate broad traffic words from strong buying-intent words
- Identify words suitable for title, bullets, and backend terms

## Sort keywords into:
- **core** - main category words
- **attribute** - color, material, size
- **feature** - functional descriptions
- **scenario** - use case terms
- **long_tail** - high relevance, low competition
- **low_relevance_risk** - high volume but poor fit

## Rules
- Prefer relevance over raw traffic.
- Do not force unrelated high-volume terms into listing copy.
- Note when the ABA sheet is too limited for strong conclusions.

## Output
Return:
1. keyword tiers
2. recommended usage
3. risky keywords
4. coverage gaps
