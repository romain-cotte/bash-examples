#!/bin/bash
# Regex

is_semver() {
  regex=^[0-9]+.[0-9]+.[0-9]+$
  if [[ $1 =~ $regex ]]; then
    echo "'$1' is a semver";
  else
    echo "'$1' is not a semver";
  fi
}

str="1.10.30"
is_semver $str

str="A0.10.21"
is_semver $str

only_space() {
  regex=[[:blank:]]*
  if [[ $1 =~ $regex ]]; then
    echo "'$1' matches $regex";
  else
    echo "'$1' does not match $regex";
  fi
}

str=""
only_space "$str"


is_one() {
  if [[ $1 == "1" ]]; then
    echo "'$1' is one";
  else
    echo "'$1' is not one";
  fi
}

is_one 1   # ok
is_one "1" # ok
is_one "2" # not ok
