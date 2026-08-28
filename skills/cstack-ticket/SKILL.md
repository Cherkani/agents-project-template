---
name: cstack-ticket
description: Create or prepare a project ClickUp ticket using the repository mapping, Cherkani naming, schedule, estimate, assignee, and milestone rules.
---

# CStack Ticket

Use when the user asks to create, prepare, or organize project work in ClickUp.

Before doing anything in ClickUp, read `AGENTS.md` and confirm the task tracking mode is explicitly `clickup`. If it is `none` or
missing, stop and ask for the mode before using ClickUp.

1. Read the project `AGENTS.md` and identify the mapped workspace, list, timezone, and default assignee.
2. Search ClickUp first for a matching task. Never create a duplicate when an existing task covers the request.
3. Before an external write, state the exact task name, destination list, assignee, and intended action. Do not modify, reassign, close, or delete an existing task unless the user explicitly identifies it and requests that change.
4. For a new task, use `YYYY-MM-DD (Day) | Subject | Work: Xh | Close: HH:MM`, with project-local `Africa/Casablanca` or the timezone defined by `AGENTS.md`.
5. Populate start date/time, due date/time, time estimate, and assign the task to the configured default assignee. A ClickUp board is normally a view of the mapped list.
6. Add milestone comments for plan approval, implementation, tests, review, and release. Completion comments must include estimated time, actual time, start time, and close time.
7. Return the task ID, URL, list, assignee, schedule, estimate, and next development branch name. Keep credentials out of files and never claim a write succeeded without verifying it.
