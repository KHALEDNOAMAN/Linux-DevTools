#!/bin/bash
set -eo pipefail
MAGENTA='\033[0;35m'
NC='\033[0m'
echo -e "${MAGENTA}Git Repository Statistics:${NC}"
echo "Total Commits: $(git rev-list --all --count)"
echo "Branches:"
git branch -a