#!/usr/bin/env bash
set -euo pipefail

codex_home="${CODEX_SHARED_HOME:-$HOME/.codex_shared}"
installer="$codex_home/skills/.system/skill-installer/scripts/install-skill-from-github.py"

if [[ ! -f "$installer" ]]; then
  echo "Codex skill installer not found: $installer" >&2
  echo "Install Codex first, then rerun this script." >&2
  exit 1
fi

install_skill() {
  local repo="$1"
  local path="$2"
  local name="$3"
  if [[ -d "$codex_home/skills/$name" ]]; then
    echo "skip $name (already installed)"
    return
  fi
  CODEX_HOME="$codex_home" python3 "$installer" --repo "$repo" --path "$path"
}

install_skill "ibelick/ui-skills" "skills/baseline-ui" "baseline-ui"
install_skill "ibelick/ui-skills" "skills/improve-ui" "improve-ui"
install_skill "ibelick/ui-skills" "skills/fixing-accessibility" "fixing-accessibility"
install_skill "trailofbits/skills" "plugins/audit-context-building/skills/audit-context-building" "audit-context-building"
install_skill "openai/skills" "skills/.curated/security-best-practices" "security-best-practices"
install_skill "openai/skills" "skills/.curated/security-threat-model" "security-threat-model"
install_skill "nextlevelbuilder/ui-ux-pro-max-skill" ".claude/skills/ui-ux-pro-max" "ui-ux-pro-max"

echo "Recommended shared skills installed in $codex_home/skills"
