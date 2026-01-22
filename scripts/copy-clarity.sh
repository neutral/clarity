#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF' >&2
Usage: copy-clarity.sh <target-repo-path> [--delete]

Copies this repo's methodology/ contents into the target repo's .clarity/ folder.
Use --delete to remove files in the target .clarity/ that no longer exist here.
EOF
}

if [[ $# -lt 1 || $# -gt 2 ]]; then
  usage
  exit 1
fi

target_repo="$1"
delete_flag=""

if [[ "${2:-}" == "--delete" ]]; then
  delete_flag="--delete"
elif [[ "${2:-}" != "" ]]; then
  usage
  exit 1
fi

if [[ ! -d "$target_repo" ]]; then
  echo "Target repo does not exist: $target_repo" >&2
  exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_root="$(cd "$script_dir/.." && pwd)"
source_clarity="$source_root/methodology/"
target_clarity="$target_repo/.clarity/"

if command -v rsync >/dev/null 2>&1; then
  rsync -a $delete_flag "$source_clarity" "$target_clarity"
else
  if [[ -n "$delete_flag" ]]; then
    echo "Error: --delete requires rsync." >&2
    exit 1
  fi
  mkdir -p "$target_clarity"
  cp -R "$source_clarity"/. "$target_clarity"
fi
