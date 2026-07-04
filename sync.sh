#!/usr/bin/env bash

# Exit immediately if any command fails
set -e

# Branch to sync with upstream
BRANCH="master"

echo "Fetching latest changes from upstream repository..."
git fetch upstream

echo "Switching to local branch: $BRANCH"

# Ensure the branch exists before switching
git checkout "$BRANCH"

echo "Merging upstream/$BRANCH into local branch..."

# Bring upstream changes into local branch
git merge "upstream/$BRANCH"

echo "Pushing updated branch to origin remote..."

# Push updated branch to your configured origin (GitHub/GitLab depending on config)
git push origin "$BRANCH"

echo "Sync complete! Branch '$BRANCH' is now up to date with upstream."
