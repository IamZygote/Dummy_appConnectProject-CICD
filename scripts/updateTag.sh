#!/bin/bash

cd $1

pwd

file="$2.txt"

if [ -f "$file" ]; then
  echo "$file exists. Updating..."
  tag=$(cat $file)

  if [ "$3" != "0" ]; then
    new_tag=$3
  else
    new_tag=`expr $tag + 1`
  fi

  echo $new_tag > $file
  cat $file
else
  echo "Creating $file for the first time..."
  cat > $file
  echo "1" > $file
fi
