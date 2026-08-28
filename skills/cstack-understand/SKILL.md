---
name: cstack-understand
description: Explain a completed implementation after testing and generate project-local documentation covering concepts, changed structure, reproduction steps, exercises, and follow-up risks.
---

# CStack Understand

Use after `$cstack-test`, or when the user asks for a technical walkthrough of completed work.

1. Read `AGENTS.md`, the relevant project docs, the current diff, recent commits, and the test evidence. Use Graphify to confirm the affected files and relationships when its graph exists.
2. Explain the feature in project terms: the problem, core concept, data flow, important decisions, changed files and responsibilities, and how the parts connect.
3. Document exact reproduction steps using the repository's real package manager, scripts, environment prerequisites, seed data, URLs, commands, and expected results. Do not invent successful results; label anything not run as unverified.
4. Add a short guided exercise so a developer can reproduce or extend the implementation safely. Include suggested files to inspect, a small change to attempt, and the checks to run.
5. Record test evidence, known limitations, security or data risks, deployment implications, rollback considerations, and useful follow-up work.
6. Write the document to `docs/agent/understanding/YYYY-MM-DD-<short-slug>.md` unless the project `AGENTS.md` defines another local documentation path. Create the directory only when needed.
7. Keep the document concise and factual. Link to repository files with relative paths and include commit, branch, ClickUp, or PR references only when they are available.
8. Do not modify source code, close or reassign ClickUp tasks, or claim release completion. If the user requests a ClickUp update, state the target and intended comment before writing it.

Recommended document sections:

- Summary and goal
- Concept and data flow
- Changed structure and file map
- Reproduction guide
- Guided exercise
- Verification evidence
- Risks, limitations, and next steps
