#!/bin/bash
set -euo pipefail
CYAN='\033[0;36m'
NC='\033[0m'
echo -e "${CYAN}Deploying application...${NC}"
echo "Pulling latest code..."
git pull origin main
echo "Deployment complete."