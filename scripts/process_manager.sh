#!/bin/bash
set -eo pipefail
BLUE='\033[0;34m'
NC='\033[0m'
if [ -z "$1" ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi
echo -e "${BLUE}Finding processes for: $1${NC}"
ps aux | grep "$1" | grep -v grep || echo "No processes found."