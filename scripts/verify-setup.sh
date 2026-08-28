#!/usr/bin/env bash
set -euo pipefail

shared_home="${CODEX_SHARED_HOME:-$HOME/.codex_shared}"
gstack_dir="${GSTACK_DIR:-$HOME/.local/share/gstack}"
failures=0
warnings=0

pass() { printf 'PASS  %s\n' "$1"; }
fail() { printf 'FAIL  %s\n' "$1" >&2; failures=$((failures + 1)); }
warn() { printf 'WARN  %s\n' "$1" >&2; warnings=$((warnings + 1)); }

check_path() {
  local path="$1" label="$2"
  if [[ -e "$path" || -L "$path" ]]; then
    pass "$label"
  else
    fail "$label is missing: $path"
  fi
}

printf 'Checking shared Codex setup\nShared home: %s\n' "$shared_home"
check_path "$shared_home" "shared Codex home"
check_path "$shared_home/config.toml" "sanitized shared config"
check_path "$gstack_dir/setup" "gstack checkout"
check_path "$gstack_dir/bin/gstack-config" "gstack configuration command"

if [[ -e "$shared_home/auth.json" ]]; then
  fail "shared home contains auth.json; keep authentication in each account profile"
else
  pass "shared home does not contain auth.json"
fi

for skill in gstack-autoplan gstack-plan-eng-review gstack-health gstack-qa gstack-review gstack-cso gstack-ship gstack-land-and-deploy gstack-canary; do
  check_path "$shared_home/skills/$skill/SKILL.md" "$skill skill"
done
for skill in cstack cstack-ticket cstack-discover; do
  check_path "$shared_home/skills/$skill/SKILL.md" "$skill skill"
done

if [[ -x "$gstack_dir/bin/gstack-config" ]]; then
  expected_settings=(proactive=true telemetry=off skill_prefix=true checkpoint_mode=explicit codex_reviews=enabled redact_prepush_hook=true)
  for setting in "${expected_settings[@]}"; do
    key="${setting%%=*}"
    expected="${setting#*=}"
    actual="$($gstack_dir/bin/gstack-config get "$key" 2>/dev/null || true)"
    if [[ "$actual" == "$expected" ]]; then
      pass "gstack setting $key=$expected"
    else
      fail "gstack setting $key should be $expected"
    fi
  done
fi

if command -v graphify >/dev/null 2>&1; then
  pass "graphify is available"
else
  warn "graphify is not available; run: uv tool install --upgrade 'graphifyy[sql]'"
fi

if [[ "$failures" -gt 0 ]]; then
  printf '\nSetup verification failed: %d check(s) failed, %d warning(s).\n' "$failures" "$warnings" >&2
  exit 1
fi
printf '\nSetup verification passed: shared tools are ready (%d warning(s)).\n' "$warnings"
