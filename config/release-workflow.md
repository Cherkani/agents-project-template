# Release Workflow

## Branches

```text
feature/<clickup-task-id>-<short-slug> -> develop -> production branch
```

Feature work is merged into `develop` first. Production promotion is a separate approved release operation.

## Release Commands

```text
/plan-eng-review
/ship
/land-and-deploy
```

Use `/ship` for a feature branch. Use `/land-and-deploy` only for an approved promotion after checking the release diff. If that skill is not installed, follow the project's documented release script.

## Release Evidence

Before promotion, collect:

```bash
git log production..develop --oneline
git diff --stat production...develop
```

The release summary should list included features, ClickUp task IDs, migrations, tests, deployment checks, risks, and rollback steps. Individual feature tickets remain the source of detailed implementation history; the release task is the aggregate record.
