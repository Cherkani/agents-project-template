#!/usr/bin/env bash
set -euo pipefail

shared_home="${CODEX_SHARED_HOME:-$HOME/.codex_shared}"
gstack_dir="${GSTACK_DIR:-$HOME/.local/share/gstack}"

mkdir -p "$shared_home"

if [[ -e "$gstack_dir" && ! -d "$gstack_dir/.git" ]]; then
  echo "GSTACK_DIR exists but is not a Git repository: $gstack_dir" >&2
  exit 1
fi

if [[ -d "$gstack_dir/.git" ]]; then
  git -C "$gstack_dir" pull --ff-only
else
  git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git "$gstack_dir"
fi

if [[ ! -e "$shared_home/config.toml" ]]; then
  cp "$(cd "$(dirname "${BASH_SOURCE[0]}")/../config" && pwd)/codex.config.example.toml" "$shared_home/config.toml"
  echo "Created sanitized configuration at $shared_home/config.toml"
else
  echo "Preserved existing configuration at $shared_home/config.toml"
fi

CODEX_HOME="$shared_home" "$gstack_dir/setup" --host codex

cat <<EOF

Shared Codex tools installed.
CODEX_HOME: $shared_home
gstack: $gstack_dir

Authentication remains separate from this template. Log into each Codex profile separately.
EOF
