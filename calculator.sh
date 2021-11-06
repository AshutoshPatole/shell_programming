#!/usr/bin/env bash


read -p "Enter first number : " first
read -p "Enter second number : " second

echo "Select one of the options :"
echo -e "1. Addition\n2. Substraction\n3. Multiplication\n4. Division"
read ch

case $ch in
  1 ) echo "$((first+second))"        ;;
  2 ) echo "$((first-second))"        ;;
  3 ) echo "$((first*second))"        ;;
  4 ) echo "$((first/second))"        ;;
  * ) echo "Invalid option!"; exit    ;;
esac
