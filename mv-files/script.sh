#!/bin/bash
# Rename all files matching *.*.js like pre.name.js into pre.js

files=($(ls -d *))

for i in "${files[@]}"; do
  if [[ $i == *.*.js ]] ; then
    index=($(echo `expr index $i "."`)-1)
    echo "Renaming $i into ${i:0:$index}.js"
    # mv $i ${i:0:$index}.js
  fi
done
