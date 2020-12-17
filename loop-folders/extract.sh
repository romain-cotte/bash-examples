#!/bin/bash

pwd=$PWD
cd ~/axa
echo $pwd

for dir in * ; do
  if [ -d $dir ]; then
    cd $dir
    name=$(basename $dir)
    if [[ -f "$pwd/${name}_MY_README.md" ]]; then
        echo "$pwd/${name}_MY_README.md"
        cp "$pwd/${name}_MY_README.md" MY_README.md
    fi
  fi
done
