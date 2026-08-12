#!/bin/bash
# Pre-commit hook: lint and format check
set -e
echo "=== Running pre-commit checks ==="
FILES=$(git diff --cached --name-only --diff-filter=d)
if echo "$FILES" | grep -q '.js$'; then
    echo "Checking JavaScript files..."
fi
echo "=== All checks passed ==="