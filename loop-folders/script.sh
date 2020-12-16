#!/bin/bash

pwd=$PWD
cd ~/axa
echo $pwd

for dir in * ; do
  cd $dir

  # The code
  if [ -d ".git" ]; then
    ### Take action if $DIR exists ###
    # git config user.email "romain.cotte.meyer@axa.com"

    # echo "$dir ok"
    if [[ -f "MY_README.md" ]]; then
        name=$(basename $dir)
        echo "$pwd/${name}_MY_README.md"
        cp MY_README.md "$pwd/${name}_MY_README.md"
    fi
  fi

  cd $OLDPWD
done
