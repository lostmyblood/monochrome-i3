#!/bin/bash
cd "$HOME/.dotfiles"

# Check if there are any new changes or modifications
if [[ -n $(git status -s) ]]; then
    git add .
    git commit -m "Auto-backup: $(date +'%Y-%m-%d %H:%M:%S')"
    git push origin main
fi
