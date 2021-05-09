#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

blue=$'\e[1;34m'
cyan=$'\e[0;36m'
dark_gray=$'\e[1;30m'
green=$'\e[1;32m'
light_gray=$'\e[0;37m'
light_green=$'\e[1;32m'
light_red=$'\e[1;31m'
purple=$'\e[0;35m'
red=$'\e[0;31m'
yellow=$'\e[1;33m'
white=$'\e[1;37m'
end_color=$'\e[0m'

echo -e "I ${red}love${end_color} ${blue}Stack Overflow$end_color"
