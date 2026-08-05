#!/bin/bash
set -eo pipefail
RED='\033[0;31m'
NC='\033[0m'
THRESHOLD=90
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $usep -ge $THRESHOLD ]; then
    echo -e "${RED}Warning: Space critically low on $partition ($usep%)${NC}"
  fi
done