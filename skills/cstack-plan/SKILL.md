---
name: cstack-plan
description: Plan a feature using Graphify, ClickUp, repository AGENTS.md rules, existing architecture, acceptance criteria, risks, tests, and release steps. Use before significant implementation work.
---

# CStack Plan

1. Read the repository `AGENTS.md`, project configuration, relevant docs, and current Git state.
2. Use Graphify when `graphify-out/graph.json` exists. Query the affected concepts and use `affected` or `path` for dependencies.
3. Search ClickUp for an existing task before proposing a new one. If task creation is requested, use the mapped workspace/list and default assignee from `AGENTS.md`.
4. Define one concrete goal, acceptance criteria, affected areas, implementation stages, risks, and verification commands.
5. For a new ClickUp task, use the repository naming format and include estimate, start, due, and close times. Do not create external work without explicit user intent.
6. Recommend the smallest relevant existing skills. Do not install skills without checking `https://officialskills.sh/` first.
7. Stop after the plan when the user asks for planning only. Otherwise ask for approval before significant edits.
