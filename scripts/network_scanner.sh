#!/bin/bash
set -eo pipefail
BLUE='\033[0;34m'
NC='\033[0m'
SUBNET="$1"
if [[ -z "$SUBNET" ]]; then
    echo "Usage: $0 <subnet_cidr>"
    exit 1
fi
echo -e "${BLUE}Scanning network $SUBNET...${NC}"
nmap -sn "$SUBNET"