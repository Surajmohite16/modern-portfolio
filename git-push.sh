#!/bin/bash

# Stop script if any command fails
set -e

# Check git status
echo "📌 Checking git status..."
git status

# Add all changes
echo "➕ Adding changes..."
git add .

# Commit with message
if [ -z "$1" ]; then
  echo "❌ Commit message missing"
  echo "Usage: ./push.sh \"your commit message\""
  exit 1
fi

echo "📝 Committing changes..."
git commit -m "$1"

# Push to main branch
echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Code pushed successfully!"

