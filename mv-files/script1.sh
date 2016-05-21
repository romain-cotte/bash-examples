#!/bin/bash
# This script will rename all files myFileToRemove.js into myFile.js

files=($(ls -d *))

for i in "${files[@]}"; do
  match=ToRemove.js
  sufLength=`expr length $match`
  if [[ $i == *$match ]] ; then
    length=($(echo `expr length $i`))
    echo "Renaming $i into ${i:0:$length-$sufLength}.js"
    # mv $i ${i:0:$length-$sufLength}.js
  fi
done
