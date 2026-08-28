---
name: cstack
description: Route a project task through Cherkani project rules, Graphify, ClickUp context, gstack workflows, and the smallest relevant official skill.
---

# CStack Router

CStack is the project-aware entry point. gstack remains the primary execution system.

1. Read the repository `AGENTS.md`, current Git status and branch, project configuration, relevant docs, and available scripts before choosing a workflow.
2. If `graphify-out/graph.json` exists, use `graphify query`, `graphify path`, or `graphify affected` to scope the task before broad source searches.
3. Classify the request: idea/scope, architecture, implementation, bug, UI, database, security, browser QA, documentation, deployment, or release.
4. Choose the narrowest installed gstack workflow. Prefer `/autoplan` for large features, `/plan-eng-review` for architecture, `/investigate` for bugs, `/qa` for application testing, `/cso` for security, `/document-generate` or `/document-release` for documentation, and `/ship` or `/land-and-deploy` for delivery.
5. Check the local skill catalog before installing anything. When a needed capability is missing or unfamiliar, search `https://officialskills.sh/` first, inspect the linked source repository, and install only the smallest reviewed skill that matches the project stack.
6. Use `$cstack-ticket` when the user requests ClickUp work. Search for duplicates first, use the mapped project list and configured Aymen Cherkani assignee, and state the external write before creating or changing a task.
7. Follow the project's branch, test, security, time-tracking, and release rules from `AGENTS.md`. Do not deploy, change production data, or modify existing ClickUp tasks without explicit approval.
8. At the beginning of a substantive task, briefly report the affected area, selected skills, Graphify status, goal, acceptance checks, and risks. Then perform the selected workflow rather than only listing suggestions.

## Routing Examples

- New feature: `/autoplan`, implement, `/health`, `/qa`, `/review`.
- Bug: `/investigate`, focused tests, `/review`.
- UI: `/plan-design-review`, UI skill, `/qa`, `/design-review`.
- Auth, API, upload, webhook, or database risk: `/plan-eng-review`, `/cso`, security skills, `/review`.
- Documentation after implementation: `/document-generate` or `/document-release`.
- Release: `/landing-report`, `/review`, `/ship`, `/land-and-deploy`, `/canary`.
