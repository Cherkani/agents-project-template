---
name: cstack-build
description: Implement an approved feature using the CStack workflow, existing project patterns, ClickUp progress tracking, and Graphify updates. Use after planning is approved.
---

# CStack Build

1. Confirm the approved goal and acceptance criteria.
2. Work on `feature/<clickup-task-id>-<short-slug>` from `develop` when a ClickUp task exists.
3. Start ClickUp time tracking for explicitly tracked work and keep the task assigned to the configured default assignee.
4. Implement in small stages. Reuse existing components, services, migrations, design tokens, and test patterns.
5. Do not modify unrelated files or existing ClickUp tasks.
6. After meaningful code changes, run `graphify update .` and the smallest relevant check.
7. Add a concise ClickUp milestone comment with changed areas, tests, risks, and actual time when the stage is complete.
8. Stop and report a blocker instead of guessing when credentials, requirements, data, or environment behavior is unclear.
