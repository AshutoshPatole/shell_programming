#!/usr/bin/env bash

if [[ "$(whoami)" != "root" ]]; then
  #statements
  echo "You have to run this script with root privileages"
  exit 999
fi

TEMP_FILE=$(mktemp)

echo "Updating the repos..."
sudo apt-get update >> $TEMP_FILE 2>&1

echo "Upgrading the system..."
sudo apt-get upgrade -y >> $TEMP_FILE 2>&1

echo "Cleaning..."
sudo apt-get clean >> $TEMP_FILE
sudo apt-get autoremove -y >> $TEMP_FILE

echo "Checking if everything went well..."

if [[ $(grep 'E: \|W: ' ${TEMP_FILE}) ]]; then
  echo "I think you should probably take a look at the logs. Updating has some issues"
  echo "LOG : $TEMP_FILE"
else
  echo "System has been updated"
  rm $TEMP_FILE
fi
