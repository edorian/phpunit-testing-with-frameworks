#!/bin/bash

dir=`dirname $0`
dir="$dir/../logs/*.left.log"

for file in $dir
do
    leftLog=$file
    rightLog=`echo $file | sed 's/left/right/'`
    echo 
    echo "Diffing $leftLog $rightLog"
    echo
    diff -u $leftLog $rightLog
done
