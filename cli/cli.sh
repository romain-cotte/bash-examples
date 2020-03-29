#!/bin/bash

# See https://askubuntu.com/a/345150

# /etc/bash_completion.d/foo
# For a static autocompletion (--help / --verbose for instance) add this:

foo_completion()
{
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="--help --verbose --version"

  if [[ ${cur} == -* ]] ; then
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
  fi
}

complete -F foo_completion foo
