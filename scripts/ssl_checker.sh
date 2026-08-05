#!/bin/bash
set -eo pipefail
YELLOW='\033[1;33m'
NC='\033[0m'
DOMAIN="$1"
if [[ -z "$DOMAIN" ]]; then
    echo "Usage: $0 <domain>"
    exit 1
fi
echo -e "${YELLOW}Checking SSL certificate for $DOMAIN...${NC}"
echo | openssl s_client -servername "$DOMAIN" -connect "$DOMAIN:443" 2>/dev/null | openssl x509 -noout -dates