#!/bin/bash
# cd 6_Symbols 
# chmod +x 6_Symbols/git_push.sh 

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <commit-message>"
  exit 1
fi

# Assign the first argument to the commit message
COMMIT_MESSAGE=$1

# Perform Git operations
git pull
git add .
git commit -m "Self Learning Project / Codespaces Push "
git commit -m "$COMMIT_MESSAGE"
git push

#  updated_repo=$(echo $GITHUB_REPOSITORY | sed 's|rifaterdemsahin|workspaces|g')
#  /$updated_repo/6_Symbols/git_push.sh "updates"