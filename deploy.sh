#!/bin/bash
# Auto-deploy Breeze Reviews dashboard to GitHub
cd "/Users/raztaylor/Desktop/Breeze Reviews"

# Copy latest dashboard as index.html for GitHub Pages
cp dashboard.html index.html

# Stage, commit, and push
git add -A
git commit -m "Update dashboard — $(date '+%b %d, %Y %H:%M')" 2>/dev/null

if [ $? -eq 0 ]; then
    git push origin main
    echo "✅ Deployed to GitHub"
else
    echo "No changes to deploy"
fi
