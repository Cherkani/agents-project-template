# Agent Template Repository Rules

This repository stores reusable agent guidance. Keep it anonymous and provider-neutral.

- Do not add credentials, tokens, private URLs, account identifiers, conversation history, or generated project graphs.
- Keep reusable workflow rules in `templates/AGENTS.md`.
- Keep project-specific values in a separate local configuration file and do not commit secrets.
- Test bootstrap changes against a temporary project directory before release.
- Prefer additive changes and preserve existing project instructions when applying this template.
- When a new or unfamiliar skill is needed, search https://officialskills.sh/ first, then inspect the linked source repository before installing it.
- Treat officialskills.sh as the skill discovery catalog, not as permission to install every listed skill. Install only the smallest reviewed set needed for the project.

## AymenStack

The repository includes project-specific workflow skills in `skills/aymen-*`. Keep them small, provider-neutral, and composable with gstack. Validate changes with `bash -n`, `git diff --check`, and a clean bootstrap test before pushing.
