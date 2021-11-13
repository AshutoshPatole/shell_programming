#!/usr/bin/env bash

echo "Git Init " >> README.md
git init
git add .
read -p "Enter the commit name : " $commit_name
git commit -m "$commit_name"
read -p "Enter the remote repo url : " $remote_repo
git remote add origin $remote_repo
git push -u origin master


# Add this script to the /usr/local/bin folder or create a symlink

# sudo ln -s ~/path-to-script/git_init.sh /usr/local/bin/gitinit.sh
# and then use it anywhere like `gitinit "Adding commit script to github"
