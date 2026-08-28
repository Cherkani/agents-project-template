# Recommended Skills

These are installed by the developer's Codex setup, not copied into every project.

## Core

```text
audit-context-building
ui-ux-pro-max
baseline-ui
improve-ui
fixing-accessibility
playwright
screenshot
security-best-practices
security-threat-model
```

The portable installer pulls these from their source repositories:

```text
ibelick/ui-skills
trailofbits/skills
openai/skills
nextlevelbuilder/ui-ux-pro-max-skill
```

## gstack

The gstack installer provides planning, review, QA, health, deployment, and release skills. Keep the installation in the shared Codex home so Codex1 and Codex2 can use the same tools. The full gstack repository is available at https://github.com/garrytan/gstack; only the most frequently used commands stay in the active catalog to preserve context budget.

## CStack

This template adds two focused project integration skills in `skills/cstack-*`:

```text
cstack
cstack-ticket
cstack-discover
```

`cstack` routes work through project rules, Graphify, gstack, and official skill discovery. `cstack-ticket` provides your ClickUp search, task naming, scheduling, assignment, milestone, and safety rules. `cstack-discover` compares skill sources and overlap before installation. They intentionally do not duplicate gstack's planning, implementation, QA, security, documentation, or release workflows.

The full gstack catalog is installed with the `gstack-` prefix. See `config/cstack-workflows.md` for routing and specialist groups. Keeping the prefix avoids collisions with CStack and other skill packs while preserving every gstack command.

## Project-scoped

Graphify is installed separately inside each project by the bootstrap script. This keeps each repository's graph and context isolated.

## Optional providers

Install provider-specific skills only when the project needs them, such as Supabase or Vercel. Do not install every catalog skill globally.

Use `https://officialskills.sh/` as the first place to search whenever a new skill is needed. Inspect the linked source repository, check its scope and permissions, and add only reviewed skills to the manifest and installer. `awesome-agent-skills` is a useful secondary catalog, not a package to install wholesale.
