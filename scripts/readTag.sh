#!/bin/bash

cd $1

pwd

file="$2.txt"

tag=$(cat $file)

new_image="$3:$tag"

echo -n $new_image | tee $4
