#/usr/bin/env bash

# See https://iridakos.com/programming/2018/03/01/bash-programmable-completion-tutorial
# for more information

# source this file : . ex-completion.sh

# will automatically complete with prefix
complete -W "now tomorrow never" ex


# will always propose the four words even with a prefix
_ex_completions()
{
  COMPREPLY+=("now")
  COMPREPLY+=("tomorrow")
  COMPREPLY+=("never")
  COMPREPLY+=("test")
}

complete -F _ex_completions ex

# will propose worlds according to the first argument
# compgen generates all possible words according to the prefix
_ex_completions()
{
  COMPREPLY=($(compgen -W "now tomorrow never" "${COMP_WORDS[1]}"))
}

complete -F _ex_completions ex


_ex_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi
  COMPREPLY=($(compgen -W "now tomorrow never" "${COMP_WORDS[1]}"))
}

complete -F _ex_completions dothis

# if the previous command is an option, only propose the possible values
# if [[ ${#COMP_WORDS[@]} -gt 1 ]]; then
#     previous_command_in_the_command_line="${COMP_WORDS[${COMP_CWORD} - 1]}"
# else
#     previous_command_in_the_command_line=""
# fi
