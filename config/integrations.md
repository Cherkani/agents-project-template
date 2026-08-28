# Integrations

## ClickUp

ClickUp is a host-level MCP connection, not a repository file. Connect it once in the Codex integrations/apps area on each laptop.
Its presence does not enable ticketing for every repository. Each task must explicitly choose `none` or `clickup` before planning;
projects whose `AGENTS.md` declares `none` must not call ClickUp.

Project `AGENTS.md` files may contain workspace and list placeholders, but must never contain OAuth tokens or private credentials.

After connecting, verify with:

```text
Search ClickUp for a test task without creating or changing anything.
```

## Codex Accounts

Authenticate each account separately. Share only sanitized configuration, skills, project instructions, and tools. Do not share `auth.json`, memories, sessions, or runtime databases.

## DeepSeek Harness

DeepSeek Harness is optional. It is an editor adapter, not part of the core CStack/gstack architecture. If configured, point it at one selected Codex profile or provider at a time. It does not merge two Codex accounts, authentication files, or live conversations. Keep its provider credentials in its own local configuration and never commit them.
