#!/bin/bash

# OpenClaw to GitHub Sync Script
# Syncs agents and skills from workspace to github-sync repo

SOURCE_DIR="$HOME/.openclaw/workspace/amazon-agent-workspace"
TARGET_DIR="$HOME/.openclaw/github-sync"

echo "=== Starting OpenClaw to GitHub Sync ==="
echo "Time: $(date)"

# Sync Agents
echo "Syncing agents..."
rsync -av --delete "$SOURCE_DIR/agents/" "$TARGET_DIR/agents/"

# Sync Skills
echo "Syncing skills..."
rsync -av --delete "$SOURCE_DIR/skills/" "$TARGET_DIR/skills/"

# Sync Root level md files (IDENTITY.md, SOUL.md, USER.md, AGENTS.md, TOOLS.md)
echo "Syncing root level files..."
for file in IDENTITY.md SOUL.md USER.md AGENTS.md TOOLS.md; do
    if [ -f "$SOURCE_DIR/$file" ]; then
        cp -f "$SOURCE_DIR/$file" "$TARGET_DIR/$file"
        echo "  - $file"
    fi
done

# Git operations
cd "$TARGET_DIR" || exit 1

# Add all changes
git add -A

# Check if there are changes
if git diff --staged --quiet; then
    echo "No changes to commit."
else
    echo "Committing changes..."
    git commit -m "Sync $(date '+%Y-%m-%d %H:%M')"
    
    echo "Pushing to GitHub..."
    git push origin main
    echo "Push successful!"
fi

echo "=== Sync Complete ==="
