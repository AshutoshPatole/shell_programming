#!/usr/bin/env bash
# Script to minimize the commit effort

git pull origin master
git add .
git commit -m "$1"
git push origin master
