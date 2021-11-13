#!/usr/bin/env bash
# Script to minimize the commit effort

git pull origin master
git add .
git commit -m "$1"
git push origin master

# Add this script to the /usr/local/bin folder or create a symlink

# sudo ln -s ~/path-to-script/git_commit.sh /usr/local/bin/gc.sh
# and then use it anywhere like `gc.sh "Adding commit script to github"
