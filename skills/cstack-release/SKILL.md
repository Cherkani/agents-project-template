---
name: cstack-release
description: Prepare and execute a tracked develop-to-production release using ClickUp inventory, gstack review, ship, land-and-deploy, and canary verification. Use only with explicit release approval.
---

# CStack Release

1. Confirm the production branch from `AGENTS.md` and verify the working tree and CI state.
2. Run the release inventory: `git log <production-branch>..develop --oneline` and `git diff --stat <production-branch>...develop`.
3. Collect every included commit, pull request, ClickUp task, migration, and known risk. Do not move or rewrite feature tickets.
4. Use `/landing-report`, `/plan-eng-review`, and `/review` for release readiness.
5. Create or update one release summary task in the configured ClickUp workspace/list, assigned to the configured default assignee.
6. Run `/ship` for feature branches and `/land-and-deploy` only for the approved develop-to-production promotion.
7. Run `/canary` after deployment, inspect logs and health checks, stop time tracking, and comment the final result with estimated and actual time.
8. Never deploy, merge, close tasks, or change production data without explicit approval.
