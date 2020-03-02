#!/bin/bash

cd ~/axa

for dir in */ ; do
  cd $dir

  # The code
  if [ -d ".git" ]; then
    ### Take action if $DIR exists ###
    echo "$dir ok"
    git config user.email "romain.cotte.meyer@axa.com"
  fi

  cd $OLDPWD
done
