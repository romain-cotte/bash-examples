#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# export PATH=${PATH}:"/home/romain/perso/bash/bash-examples/completion"
# install comp.sh /home/romain/.local/bin/comp

echo 'comp script'

_version="0.0.1"

usage() {
  echo "how to use the command line"
}

_main_commands="
one
two
three"

function comp::parse_arguments() {
  set -u

  while true; do
    case "${1}" in
    -v | --version)
        echo $_version
        shift
        ;;
    -a | --abc)
        echo "abc"
        shift
        ;;
    -o | --option)
        export OPTION="${2}"
        echo "Option: ${OPTION}"
        shift 2
        ;;
    run_a)
      echo "run a"
      exit 0
      ;;
    *)
        usage
        exit 1
      ;;
    esac
  done
}

comp::parse_arguments "${@}"

# set autocompletion function for breeze
# complete -F breeze_complete::_comp_breeze breeze
# complete -F breeze_complete::_comp_breeze ./breeze
