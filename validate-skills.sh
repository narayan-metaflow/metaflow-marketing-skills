#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
bad=0
for d in "$root"/skills/*/; do
  [[ -d "$d" ]] || continue
  name="$(basename "$d")"
  if [[ ! -f "$d/SKILL.md" ]]; then
    echo "Missing SKILL.md: $name" >&2
    bad=1
  fi
done
if [[ "$bad" -ne 0 ]]; then
  exit 1
fi
echo "OK: all skill folders contain SKILL.md"
