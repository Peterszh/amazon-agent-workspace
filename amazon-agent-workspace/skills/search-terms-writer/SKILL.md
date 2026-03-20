---
name: search-terms-writer
description: Suggest backend search terms for Amazon listings based on uncovered relevant keywords.
---

# Search Terms Writer

Use this skill to generate backend search terms.

## Goals
- Fill coverage gaps left by title and bullets
- Prioritize relevant and non-redundant terms
- Avoid obvious duplication

## Rules
- Do not repeat front-loaded terms excessively
- Avoid brand misuse
- Avoid low-relevance stuffing

## Output
Return:
1. suggested search terms
2. excluded terms
3. rationale
