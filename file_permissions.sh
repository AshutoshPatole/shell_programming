#!/usr/bin/env bash

E_WRONGARG=85

function usage() {
  cat <<- EOF
usage : ./file_permission fileName
fileName is required
EOF
}

if [[ ! "$#" == 1 ]]; then
  usage
  exit $E_WRONGARG
fi

if [[ ! -f "$1" ]]; then
  echo "the file does not exists"
  exit 1
fi

if [[ ! -r "$1" ]]; then
  echo "the file does not have read permissions"
fi

if [[ ! -w "$1" ]]; then
  echo "the file does not have write permissions"
fi

if [[ ! -x "$1" ]]; then
  echo "the file does not have execute permissions"
fi
if [[ -w "$1" && -r "$1" && -x "$1" ]]; then
  echo "the file has read, write and execute permissions"
fi
