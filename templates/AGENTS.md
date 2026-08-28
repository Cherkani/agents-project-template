# Project Agent Guide

Replace all `REPLACE_*` placeholders before committing this file to a project.

## Project Identity

- Project: `REPLACE_PROJECT_NAME`
- Stack: `REPLACE_STACK`
- Repository areas: `REPLACE_PROJECT_AREAS`
- Local URL(s): `REPLACE_LOCAL_URLS`
- Production URL: `REPLACE_PRODUCTION_URL`

## Mandatory Session Startup

At the beginning of the first substantive response in a new task, briefly state:

1. The project area and files likely affected.
2. Existing scripts, tests, tools, integrations, and project instructions found.
3. The skills that will be used and why.
4. The goal, acceptance criteria, implementation stages, and release path.
5. Risks involving secrets, authentication, data, migrations, infrastructure, or external writes.

Inspect the relevant code and docs before editing. Keep this short for trivial questions or one-line changes.

## Discovery And Planning

- When a new or unfamiliar skill is needed, search https://officialskills.sh/ first and inspect the linked source repository before installing it.
- Install only the smallest reviewed skill set needed for this project; do not bulk-install the catalog.
- Use Graphify for repository navigation when `graphify-out/graph.json` exists.
- Prefer `graphify query`, `graphify path`, and `graphify affected` over repeatedly scanning unrelated files.
- Define the goal and acceptance criteria before implementation.
- Use the project's architecture and existing patterns before adding dependencies or abstractions.

## Implementation Rules

- Keep changes scoped to the requested feature and preserve unrelated user changes.
- Reuse existing components, design tokens, validation, logging, and service boundaries.
- Handle loading, empty, error, disabled, mobile, keyboard, and success states for UI work.
- Keep secrets in environment configuration and update safe example files when configuration changes.
- Use tracked migrations for database changes.
- Never treat visual hiding as authorization; enforce access control server-side.

## Verification

- After code changes, run `graphify update .`.
- Run the smallest relevant lint, type, unit, integration, API, database, and browser checks.
- For UI work, verify narrow mobile and desktop layouts with a real browser when practical.
- For security-sensitive changes, use a security review and test authorized and unauthorized behavior.
- Before handoff, run broader applicable checks and report failures honestly.

## ClickUp (Optional)

- Workspace: `REPLACE_CLICKUP_WORKSPACE_NAME`
- Workspace ID: `REPLACE_CLICKUP_WORKSPACE_ID`
- Default space: `REPLACE_CLICKUP_SPACE_NAME`
- Default list: `REPLACE_CLICKUP_LIST_NAME`
- Default list ID: `REPLACE_CLICKUP_LIST_ID`
- Default assignee: `REPLACE_CLICKUP_ASSIGNEE`
- Default assignee ID: `REPLACE_CLICKUP_ASSIGNEE_ID`
- Timezone: `REPLACE_TIMEZONE`

- Search before creating a task to avoid duplicates.
- Name new tasks with: `YYYY-MM-DD (Day) | Subject | Work: Xh | Close: HH:MM`.
- Use the task start date/time, due date/time, and time estimate fields in addition to the name; the name is a quick human-readable summary.
- Use the project timezone for weekday, start, due, and close times.
- Create tasks in the mapped list; a ClickUp board is normally a view of a list.
- State the task/list and intended external write before creating or changing work.
- Never modify, move, reassign, close, or delete an existing task unless the user identifies it and requests the change.
- Add milestone comments for plan approval, implementation, tests, review, and release.
- When blocked, record the blocker, what was tried, and what is needed.
- Include the task ID in branch names, commits, and pull requests when available.

## Release

- Follow the project's documented development-to-production path.
- Verify environment variables, migrations, logs, health checks, and the affected user workflow.
- Deploy only with explicit approval.
- Update the task tracker after release and record the verification result.
