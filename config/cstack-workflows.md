# CStack Workflow Map

CStack is the short, Cherkani-specific router and ClickUp integration. gstack is the primary maintained workflow library and is installed with the `gstack-` prefix so both systems can coexist without name collisions.

## Main Workflow

```text
$cstack -> /gstack-autoplan -> implementation -> /gstack-qa -> /gstack-review -> /gstack-ship -> /gstack-land-and-deploy
```

## CStack To Gstack Routing

| CStack command | Use these gstack specialists when needed |
| --- | --- |
| `$cstack` | Inspect project context and route to the correct gstack and official skills. |
| `$cstack-ticket` | Search/create the mapped ClickUp task, then use gstack for the complete development lifecycle. |
| `$cstack-discover` | Search and rank a new skill before installation; never bulk-install the catalog. |

## Specialist Groups

- Product and architecture: `office-hours`, `autoplan`, `plan-ceo-review`, `plan-eng-review`, `plan-design-review`, `plan-devex-review`, `plan-tune`, `spec`.
- Implementation quality: `health`, `review`, `investigate`, `diagram`, `codex`, `careful`, `guard`, `freeze`, `unfreeze`.
- Browser and QA: `browse`, `qa`, `qa-only`, `setup-browser-cookies`, `open-gstack-browser`, `canary`.
- Security and documentation: `cso`, `document-generate`, `document-release`, `learn`, `retro`.
- Delivery: `setup-deploy`, `landing-report`, `ship`, `land-and-deploy`.
- Optional platform-specific workflows: iOS, PDF, benchmarking, GBrain, pairing, scraping, and skill maintenance.

Use the narrowest specialist that matches the work. CStack supplies project context, Graphify, ClickUp, and release rules; gstack supplies the detailed execution method.

## Integration Boundary

Do not edit generated gstack skill files to add project rules. They are regenerated during upgrades. Put reusable repository rules in `AGENTS.md`; put ClickUp-specific behavior in `$cstack-ticket`; let gstack own planning, implementation quality, QA, security, documentation, and release. DeepSeek Harness is optional and must not be treated as a shared context or authentication layer.
