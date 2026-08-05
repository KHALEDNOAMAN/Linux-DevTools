#!/bin/bash
set -eo pipefail
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${RED}Cleaning up unused Docker resources...${NC}"
docker system prune -af --volumes
echo -e "${GREEN}Docker cleanup complete.${NC}"