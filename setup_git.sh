#!/usr/bin/env bash
set -euo pipefail

# Usage: ./setup_git.sh <your-github-username> <repo-name>
# Example: ./setup_git.sh thuynvt12-dev ProjectMgmt

if [ $# -lt 2 ]; then
  echo "Usage: $0 <github-username> <repo-name>"
  exit 1
fi

GH_USER="$1"
REPO="$2"

# Initialize git if not already
if [ ! -d .git ]; then
  git init
fi

git add .
git commit -m "Initial commit: import Project Management app"
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/${GH_USER}/${REPO}.git"
git push -u origin main
