#!/usr/bin/env bash

# program to learn about functions in shell script

set -e

./parameters.sh $@

function print_header() {
  echo
  echo "***********************************"
  echo $@
  echo "***********************************"
  echo
}


print_header $1
print_header $2
print_header $3
