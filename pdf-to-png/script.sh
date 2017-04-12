#!/bin/bash

files=($(find ./pdf-files -iname '*.pdf'))

for file in "${files[@]}"; do
  name="${file#*/}"
  name="${name#*/}"
  dotIndex=($(echo `expr index $name "."`)-1)
  destination="./png-files/${name:0:$dotIndex}.png"
  convert -density 150 $file -quality 200 $destination
  echo "Convert $file into $destination"
done
