 #!/bin/bash

# This script will rename all files myFileCpp.sublime-snippet into
# myFile.sublime-snippet

files=($(ls -d *))

for i in "${files[@]}"; do
  match=Cpp.sublime-snippet
  sufLength=`expr length $match`
  if [[ $i == *$match ]] ; then
    length=($(echo `expr length $i`))
    echo "Renaming $i into ${i:0:$length-$sufLength}.sublime-snippet"
    mv $i ${i:0:$length-$sufLength}.sublime-snippet
  fi
done
