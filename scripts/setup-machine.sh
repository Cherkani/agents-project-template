#!/usr/bin/env bash
set -euo pipefail

template_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is required." >&2
  exit 1
fi

if ! command -v codex >/dev/null 2>&1; then
  echo "Codex CLI is not on PATH. Install Codex first, then rerun this script." >&2
  exit 1
fi

"$template_root/scripts/install-codex-shared.sh"

"$template_root/scripts/install-recommended-skills.sh"

if command -v uv >/dev/null 2>&1; then
  uv tool install --upgrade 'graphifyy[sql]'
else
  echo "uv is not installed; install uv, then run: uv tool install --upgrade 'graphifyy[sql]'" >&2
fi

cat <<'EOF'

Machine setup is complete.

Still required once per laptop/account:
1. Authenticate Codex1 and Codex2 separately.
2. Connect ClickUp in the Codex integrations/apps area.
3. Run scripts/bootstrap-project.sh for each repository.

ClickUp OAuth and Codex account state cannot be stored in Git.
EOF
