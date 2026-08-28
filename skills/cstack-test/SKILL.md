---
name: cstack-test
description: Verify an implementation with Graphify, project quality checks, browser flows, security checks, and ClickUp evidence. Use before review or release.
---

# CStack Test

1. Run `graphify update .` and confirm the affected relationships are present.
2. Run the smallest relevant lint, type, unit, integration, migration, and build checks.
3. Start the local application and use `playwright`, `browse`, or `qa` for critical user flows.
4. For UI work, check narrow mobile, desktop, keyboard, loading, empty, error, and success states.
5. For auth, data, migrations, uploads, or infrastructure, run the relevant security review and authorized/unauthorized checks.
6. Record passed checks, failures, screenshots or URLs, remaining risks, and actual time in the ClickUp task comment.
7. Set the task to `ready for review` only when the evidence is complete.
