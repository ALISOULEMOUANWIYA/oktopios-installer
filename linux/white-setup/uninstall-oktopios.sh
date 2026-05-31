#!/usr/bin/env bash
set -euo pipefail

PYTHON_BIN="${PYTHON_BIN:-python3}"

echo "==> Uninstalling Oktopios"
"$PYTHON_BIN" -m pip uninstall -y oktopios

echo "==> Done"