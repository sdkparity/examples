#!/usr/bin/env bash
set -euo pipefail

SDKPARITY_REPO="${SDKPARITY_REPO:-../sdkparity}"
OUTPUT_DIR="${OUTPUT_DIR:-.tmp/pulse-run}"

rm -rf "$OUTPUT_DIR"

bun "$SDKPARITY_REPO/apps/cli/src/bin.ts" run generate \
  --spec pulse-api/openapi.json \
  --languages typescript,python \
  --output-dir "$OUTPUT_DIR"

"$SDKPARITY_REPO/node_modules/.bin/tsc" -p "$OUTPUT_DIR/typescript-sdk/tsconfig.json" --noEmit
python3 -m py_compile "$OUTPUT_DIR/python-sdk/sdkparity_client/__init__.py"
