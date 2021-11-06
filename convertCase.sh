#!/usr/bin/env bash


echo -e "Choose an option\n1. String conversion\n2. File Conversion"

read choice

case $choice in
  1 ) read -p "Enter the string : " string
      echo -e "***Choose one of the option***\n1. UpperCase\n2. LowerCase\n"
      read strCaseType
      case $strCaseType in
        1 ) echo $string | tr "[[:lower:]]" "[[:upper:]]"
          ;;
        2 ) echo $string | tr "[[:upper:]]" "[[:lower:]]"
          ;;
        * ) echo "Invalid option!"; exit 1
          ;;
      esac
    ;;
  2 ) read -p "Enter the file name : " filename

  if [[ ! -f "$filename" ]]; then
    echo "File doesn't exists."
    exit 1
  fi

  result=$(cat $filename)

  read -p "Enter the output file name : " outFile

  echo -e "***Choose one of the option***\n1. UpperCase\n2. LowerCase\n"

  read caseType

  case $caseType in
    1 ) echo $result | tr "[[:lower:]]" "[[:upper:]]" >> $outFile
      ;;
    2 ) echo $result | tr "[[:upper:]]" "[[:lower:]]" >> $outFile
      ;;
    * ) echo "Invalid option!"; exit 1
      ;;

  esac

  echo "Done ."
  ;;
esac
