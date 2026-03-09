#!/bin/bash

set -o errexit


f() {
  echo "$1: parameter 1 is $1, parameter 2 is $2"
}
f "a" "b"

