#!/usr/bin/env bash
set -euo pipefail

# ...existing code...
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

DRY_RUN=0

usage() {
  cat <<EOF
Usage: $(basename "$0") [options]

Options:
  -n, --dry-run    Show commands that would be executed without running them
  -h, --help       Show this help message
EOF
}

# simple arg parsing
while [[ $# -gt 0 ]]; do
  case "$1" in
    -n|--dry-run) DRY_RUN=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1"; usage; exit 2 ;;
  esac
done

REVEAL_PREFIX="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0"

# find all .ipynb files (skip checkpoints) and convert to reveal.js slides
find "$ROOT_DIR" -type f -name "*.ipynb" ! -path "*/.ipynb_checkpoints/*" | while IFS= read -r nb; do
  echo "Converting: $nb"
  if [[ $DRY_RUN -eq 1 ]]; then
    echo "DRY RUN: jupyter nbconvert --to slides \"$nb\" --reveal-prefix \"$REVEAL_PREFIX\""
  else
    jupyter nbconvert --to slides "$nb" --reveal-prefix "$REVEAL_PREFIX"
  fi
done
// ...existing code...