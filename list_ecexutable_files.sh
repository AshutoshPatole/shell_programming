#!/usr/bin/env bash

# This script is used to list all executable containing config in name from /usr/bin and /bin

# The comma operator links together a series of arithmetic operations. All are evaluated, but only the last one is returned.

for file in /{,usr/}bin/*config*; do
  if [[ -x $file ]]; then
    echo $file
  fi
done
