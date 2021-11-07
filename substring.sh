#!/usr/bin/env bash


read -p "Enter a string : " string
read -p "Enter how many characters to slice : " slice
echo -e "output : ${string:0:$slice} "
