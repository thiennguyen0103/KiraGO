#!/usr/bin/env bash
set -euo pipefail

unformatted="$(gofmt -l cmd internal)"

if [[ -n "$unformatted" ]]; then
  printf 'Go files need formatting:\n%s\n' "$unformatted"
  printf 'Run: pnpm nx format api\n'
  exit 1
fi
