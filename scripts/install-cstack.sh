#!/usr/bin/env bash
set -euo pipefail

codex_home="${CODEX_SHARED_HOME:-$HOME/.codex_shared}"
template_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
backup_root="$codex_home/skills/.cstack-backups/$(date +%Y%m%d-%H%M%S)"

mkdir -p "$codex_home/skills"
for skill_dir in "$template_root"/skills/cstack-*; do
  [[ -d "$skill_dir" ]] || continue
  name="$(basename "$skill_dir")"
  destination="$codex_home/skills/$name"
  if [[ -e "$destination" || -L "$destination" ]]; then
    if [[ ! -f "$destination/SKILL.md" ]] || ! grep -q "^name: $name$" "$destination/SKILL.md"; then
      echo "refusing to replace unrelated existing skill: $destination" >&2
      exit 1
    fi
    mkdir -p "$backup_root"
    mv "$destination" "$backup_root/$name"
    echo "backed up previous $name to $backup_root/$name"
  fi
  cp -a "$skill_dir" "$destination"
  echo "installed $name"
done

echo "CStack ticket integration installed in $codex_home/skills"
