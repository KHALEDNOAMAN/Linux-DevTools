#!/bin/bash
set -euo pipefail
YELLOW='\033[1;33m'
NC='\033[0m'
LOG_FILE="$1"
if [[ ! -f "$LOG_FILE" ]]; then
    echo "File not found: $LOG_FILE"
    exit 1
fi
echo -e "${YELLOW}Top 5 Errors in $LOG_FILE:${NC}"
grep -i "error" "$LOG_FILE" | head -n 5 || true