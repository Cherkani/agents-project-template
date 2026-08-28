# CStack Workflow Map

CStack is the short, project-aware entry layer. gstack remains the maintained specialist library and is installed with the `gstack-` prefix so both systems can coexist without name collisions.

## Main Workflow

```text
$cstack-plan -> $cstack-build -> $cstack-test -> $cstack-understand -> $cstack-release
```

## CStack To Gstack Routing

| CStack command | Use these gstack specialists when needed |
| --- | --- |
| `$cstack-plan` | `/gstack-office-hours`, `/gstack-autoplan`, `/gstack-plan-ceo-review`, `/gstack-plan-eng-review`, `/gstack-plan-design-review`, `/gstack-plan-devex-review`, `/gstack-spec` |
| `$cstack-build` | `/gstack-health`, `/gstack-diagram`, `/gstack-investigate`, `/gstack-codex` |
| `$cstack-test` | `/gstack-qa`, `/gstack-qa-only`, `/gstack-browse`, `/gstack-review`, `/gstack-cso`, `/gstack-health` |
| `$cstack-understand` | `/gstack-document-generate`, `/gstack-document-release`, `/gstack-learn` |
| `$cstack-release` | `/gstack-landing-report`, `/gstack-review`, `/gstack-ship`, `/gstack-land-and-deploy`, `/gstack-canary`, `/gstack-retro` |

## Specialist Groups

- Product and architecture: `office-hours`, `autoplan`, `plan-ceo-review`, `plan-eng-review`, `plan-design-review`, `plan-devex-review`, `plan-tune`, `spec`.
- Implementation quality: `health`, `review`, `investigate`, `diagram`, `codex`, `careful`, `guard`, `freeze`, `unfreeze`.
- Browser and QA: `browse`, `qa`, `qa-only`, `setup-browser-cookies`, `open-gstack-browser`, `canary`.
- Security and documentation: `cso`, `document-generate`, `document-release`, `learn`, `retro`.
- Delivery: `setup-deploy`, `landing-report`, `ship`, `land-and-deploy`.
- Optional platform-specific workflows: iOS, PDF, benchmarking, GBrain, pairing, scraping, and skill maintenance.

Use the narrowest specialist that matches the work. CStack supplies project context, Graphify, ClickUp, and release rules; gstack supplies the detailed execution method.
