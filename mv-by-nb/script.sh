 #!/bin/bash

# This script will echo all files pre.name.js

files=($(ls -d *))

for i in "${files[@]}"; do
  if [[ $i == *.*.js ]] ; then
    index=($(echo `expr index $i "."`)-1)
    # echo $i
    # echo ${i:0:$index}
    # echo $((${i:0:$index}-1))
    echo "Renaming $i into $((${i:0:$index}-1))${i:$index}"
  fi
done

