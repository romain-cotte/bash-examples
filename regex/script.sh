#!/bin/bash
# Regex

str="1.10.30"

if [[ $str =~ ^[0-9]+.[0-9]+.[0-9]+$ ]]; then
  echo "$str is a valid semver";
fi

str="A0.10.21"
if ! [[ $str =~ ^[0-9]+.[0-9]+.[0-9]+$ ]]; then
  echo "$str is an invalid semver";
fi
