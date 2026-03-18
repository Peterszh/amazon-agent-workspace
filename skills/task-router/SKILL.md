---
name: task-router
description: Route Amazon ecommerce tasks to the correct child agent based on task type.
---

# Task Router

Use this skill after intent classification.

## Routing Rules
- **listing_content** → Listing撰写Agent
- **keyword_strategy** → Listing撰写Agent
- **operations_diagnosis** → 亚马逊运营Agent
- **promotion_strategy** → 亚马逊运营Agent
- **hybrid_task** → Listing撰写Agent + 亚马逊运营Agent
- **missing_info** → ask for minimal critical info first, or provide a scoped preliminary answer

## Output
Return:
1. selected_agent
2. reason
3. required_inputs
4. whether_parallel_execution_is_needed
