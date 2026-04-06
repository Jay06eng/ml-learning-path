#!/bin/bash
# =============================================================================
# create-repo.sh
# Run this in Claude Code (or any terminal with gh CLI authenticated) to
# create the GitHub repo and push the initial files.
#
# Prerequisites:
#   - gh CLI installed and authenticated: gh auth login
#   - git configured with your username/email
#
# Usage:
#   chmod +x create-repo.sh
#   ./create-repo.sh
# =============================================================================

set -e  # Exit immediately on any error

REPO_NAME="ml-learning-path"
GITHUB_USERNAME="YOUR_USERNAME"   # <-- Replace this before running
DESCRIPTION="A structured, hands-on ML learning path from statistics fundamentals to applied algorithms — Python, Scikit-learn, and Google Colab."

echo "=============================="
echo " Creating GitHub repo: $REPO_NAME"
echo "=============================="

# Step 1: Create the repo on GitHub
gh repo create "$REPO_NAME" \
  --public \
  --description "$DESCRIPTION" \
  --gitignore Python \
  --license mit

# Step 2: Initialize local git repo and add files
git init
git add README.md requirements.txt
git commit -m "Initial commit: README, requirements, and repo setup"
git branch -M main
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
git push -u origin main

# Step 3: Add topics
echo ""
echo "Adding repo topics..."
gh repo edit "$GITHUB_USERNAME/$REPO_NAME" \
  --add-topic machine-learning \
  --add-topic python \
  --add-topic scikit-learn \
  --add-topic data-science \
  --add-topic jupyter-notebook \
  --add-topic google-colab \
  --add-topic beginner-friendly \
  --add-topic learning-path \
  --add-topic statistics \
  --add-topic random-forest

# Step 4: Create folder scaffolding with .gitkeep placeholders
echo ""
echo "Creating folder structure..."
mkdir -p slides
mkdir -p notebooks/module_1_statistics
mkdir -p notebooks/module_2_fundamentals
mkdir -p notebooks/module_3_algorithms
mkdir -p data
mkdir -p resources

touch slides/.gitkeep
touch notebooks/module_1_statistics/.gitkeep
touch notebooks/module_2_fundamentals/.gitkeep
touch notebooks/module_3_algorithms/.gitkeep
touch data/.gitkeep
touch resources/.gitkeep

git add .
git commit -m "Add folder structure scaffold"
git push

echo ""
echo "=============================="
echo " Done! Repo live at:"
echo " https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo "=============================="
