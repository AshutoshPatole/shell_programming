#!/usr/bin/env bash

# A simple number guessing game

TO_GUESS=$RANDOM

echo "I have guessed the number between 0 - 32767"
echo "Enter 99999 to give up"

while read -p "Enter number : " input
do
  if [[ "$input" -eq "99999" ]]; then
    echo "Sad :(  The number was $TO_GUESS"
    exit 0
  elif [[ "$input" -gt $TO_GUESS ]]; then
    echo "Your guessed number is higher than mine"
  elif [[ "$input" -lt $TO_GUESS ]]; then
    echo "Your guessed number is lower than mine"
  elif [[ "$input" -eq $TO_GUESS ]]; then
    echo "Woohoo You guessed it right"
    echo "==     $TO_GUESS      =="
    exit 0
  fi
done
