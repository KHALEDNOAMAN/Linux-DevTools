#!/bin/bash
set -e

# Git Workflow Automation
case "$1" in
    feature)
        git checkout -b "feature/$2"
        echo "Created feature/$2 branch"
        ;;
    sync)
        git fetch origin
        git rebase origin/main
        echo "Synced with main"
        ;;
    cleanup)
        git branch --merged | grep -v main | xargs -r git branch -d
        echo "Cleaned merged branches"
        ;;
    *)
        echo "Usage: $0 {feature|sync|cleanup} [name]"
esac