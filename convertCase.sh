#!/usr/bin/env bash

read -p "Enter the file name : " filename

if [[ ! -f "$filename" ]]; then
  echo "File doesn't exists."
  exit 1
fi

result=$(cat $filename)

read -p "Enter the output file name : " outFile

echo -e "***Choose one of the option***\n1. UpperCase\n2. LowerCase\n"

read choice

case $choice in
  1 ) echo $result | tr "[[:lower:]]" "[[:upper:]]" >> $outFile
    ;;
  2 ) echo $result | tr "[[:upper:]]" "[[:lower:]]" >> $outFile
    ;;
  * ) echo "Invalid option!"; exit 1
    ;;

esac

echo "Done ."
