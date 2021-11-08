#!/usr/bin/env bash

# program to learn about arrays in shell script

fruits=('Apple' 'Banana' 'Watermelon' 'Papaya' 'Guava')     # elements separated by space

# iterating the array fruits

for (( i = 0; i < ${#fruits}; i++ )); do
  #statements
  echo ${fruits[$i]}
done
