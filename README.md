# Agent Project Template

Reusable project instructions for Codex and other coding agents.

This repository contains generic rules only. Replace every `REPLACE_*` value before using it in a project.

## Use In A New Project

From this repository:

```bash
./scripts/bootstrap-project.sh /absolute/path/to/your-project
```

The script will:

- copy `templates/AGENTS.md` when the target has no `AGENTS.md`;
- refuse to overwrite an existing `AGENTS.md`;
- add `graphify-out/` to the target `.gitignore`;
- install Graphify project-scoped for Codex when the CLI is available.

If the target already has `AGENTS.md`, merge the template sections manually so existing project rules are preserved.

## Install Shared Codex Tools

On a new laptop or after creating a new shared Codex home:

```bash
./scripts/install-codex-shared.sh
```

This installs or updates gstack and creates a sanitized `config.toml` only when the shared Codex home does not already have one. It never copies authentication, memory, session, history, or runtime files. See `config/skills-manifest.md` for the recommended skill groups.

## Recommended Workflow

```text
Discover with Graphify -> define goal -> plan -> implement -> test -> review -> release
```

Use the repository's own package manager and scripts. Never assume that commands in this template exist in every project.

## Optional Integrations

ClickUp, Supabase, Vercel, GitHub, and other integrations are opt-in. Configure them in the target project's `AGENTS.md` using placeholders; never copy credentials or private account data into this repository.

## Do Not Commit

```text
auth.json
memories_*.sqlite
sessions/
.env
.env.*
graphify-out/
```
