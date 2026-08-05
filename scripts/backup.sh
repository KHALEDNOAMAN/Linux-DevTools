#!/bin/bash
set -euo pipefail
GREEN='\033[0;32m'
NC='\033[0m'
SRC="$1"
DEST="$2"
if [[ -z "$SRC" || -z "$DEST" ]]; then
    echo "Usage: $0 <source> <destination>"
    exit 1
fi
echo -e "${GREEN}Starting rsync backup from $SRC to $DEST${NC}"
rsync -avh --delete "$SRC/" "$DEST/"