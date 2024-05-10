#!/bin/bash

pwd=$PWD
cd ~/folder
echo $pwd

for dir in * ; do
  if [ -d "$dir" ]; then
    cd $dir
    if [ -d ".git" ]; then
      ### Take action if $DIR exists ###
      # git config user.email "youremail@domain.com"

      # echo "$dir ok"
      if [[ -f "MY_README.md" ]]; then
          name=$(basename $dir)
          echo "$pwd/${name}_MY_README.md"
          cp MY_README.md "$pwd/${name}_MY_README.md"
      fi
    fi

    cd $OLDPWD
  fi
done
