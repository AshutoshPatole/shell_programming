#!/usr/bin/env bash

if [[ "$#" == 0 ]]; then
  echo "Atleast one arg is required"
  exit 1
fi

echo "$@"
