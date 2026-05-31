#!/usr/bin/env bash
set -euo pipefail

APP_NAME="Oktopios"
PACKAGE_NAME="oktopios"
PYTHON_BIN="${PYTHON_BIN:-python3}"

echo "==> Installing ${APP_NAME} from PyPI"

if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
    echo "Error: python3 is required."
    echo "Install Python from https://www.python.org/downloads/macos/ or via Homebrew: brew install python"
    exit 1
fi

"$PYTHON_BIN" -m ensurepip --upgrade >/dev/null 2>&1 || true
"$PYTHON_BIN" -m pip install --user --upgrade "$PACKAGE_NAME"

USER_BASE="$($PYTHON_BIN -m site --user-base)"
BIN_DIR="$USER_BASE/bin"

if ! command -v okp >/dev/null 2>&1; then
    export PATH="$BIN_DIR:$PATH"
fi

if command -v okp >/dev/null 2>&1; then
    echo "==> Oktopios installed successfully"
    okp --version || true
else
    echo "==> Oktopios installed, but 'okp' is not in PATH yet."
    echo "Add this line to ~/.zshrc:"
    echo "export PATH=\"$BIN_DIR:\$PATH\""
fi

echo "==> Test with: okp 'print(\"Bonjour Oktopios\")'"
read -r -p "Press Enter to close..." _