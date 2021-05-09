#!/bin/bash
set -euo pipefail
IFS=$'\n\t'


case $1 in
  "now")
    echo $1
    ;;
  "tomorrow")
    echo $1
    ;;
  "never")
    echo $1
    ;;
  *)
    ;;
esac
