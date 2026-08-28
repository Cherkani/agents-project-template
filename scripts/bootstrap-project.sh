#!/usr/bin/env bash
set -euo pipefail

template_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target="${1:-}"

if [[ -z "$target" || ! -d "$target" ]]; then
  echo "Usage: $0 /absolute/path/to/project" >&2
  exit 2
fi

target="$(cd "$target" && pwd)"

if [[ -e "$target/AGENTS.md" ]]; then
  echo "Refusing to overwrite existing file: $target/AGENTS.md" >&2
  echo "Merge templates/AGENTS.md manually to preserve project rules." >&2
  exit 1
fi

cp "$template_root/templates/AGENTS.md" "$target/AGENTS.md"

touch "$target/.gitignore"
if ! grep -Fxq 'graphify-out/' "$target/.gitignore"; then
  printf '\ngraphify-out/\n' >> "$target/.gitignore"
fi

if command -v graphify >/dev/null 2>&1; then
  (
    cd "$target"
    graphify install --project --platform codex
  )
else
  echo "Graphify CLI not found; install graphifyy, then run:" >&2
  echo "  cd $target && graphify install --project --platform codex" >&2
fi

echo "Created $target/AGENTS.md"
echo "Replace REPLACE_* placeholders before committing."
