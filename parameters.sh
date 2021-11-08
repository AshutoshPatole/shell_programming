#!/usr/bin/env bash

if [[ "$#" == 0 ]]; then
  cat <<- EOF
  usage: $0 [something]
EOF
exit 1
fi
