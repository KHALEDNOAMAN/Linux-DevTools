#!/bin/bash
set -eo pipefail
GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${GREEN}System Information:${NC}"
uname -a
echo -e "${GREEN}CPU Load:${NC}"
uptime
echo -e "${GREEN}Memory:${NC}"
free -h