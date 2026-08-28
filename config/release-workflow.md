# Release Workflow

## Branches

```text
feature/<clickup-task-id>-<short-slug> -> develop -> production branch
```

Feature work is merged into `develop` first. Production promotion is a separate approved release operation.

## Release Commands

```text
/gstack-plan-eng-review
/gstack-ship
/gstack-land-and-deploy
```

Use `/gstack-ship` for a feature branch. Use `/gstack-land-and-deploy` only for an approved promotion after checking the release diff. If that skill is not installed, follow the project's documented release script.

## Release Evidence

Before promotion, collect:

```bash
git log production..develop --oneline
git diff --stat production...develop
```

The release summary should list included features, ClickUp task IDs, migrations, tests, deployment checks, risks, and rollback steps. Individual feature tickets remain the source of detailed implementation history; the release task is the aggregate record.

## Deployment Investigation

Before using deployment credentials, run `/gstack-investigate` and `/gstack-setup-deploy` to understand the deployment path, target environment, current version, required variables, health checks, logs, and rollback procedure. Use keys only from local environment configuration, an SSH agent, a platform CLI session, or the project's secret manager. Never print or persist secret values. Deploy only after explicit approval, then run `/gstack-canary` and a feature smoke test.
