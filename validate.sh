#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
required=(
  "README.md"
  "LICENSE"
  "install.sh"
  "validate.sh"
  "tests/run_all.sh"
  "skill/SKILL.md"
  "skill/opportunity-eval.md"
  "skill/scoring.md"
  "skill/artifacts.md"
)

for file in "${required[@]}"; do
  [[ -f "${ROOT}/${file}" ]] || { echo "missing: ${file}" >&2; exit 1; }
done

grep -q "^name: solana-opportunity-evaluator" "${ROOT}/skill/SKILL.md"
grep -q "pursue / defer / drop" "${ROOT}/skill/artifacts.md"
if rg -n --glob '!validate.sh' --glob '!tests/run_all.sh' "TODO" "${ROOT}" >/dev/null; then
  echo "found TODO markers" >&2
  exit 1
fi

echo "validation ok: solana-opportunity-evaluator-skill"
