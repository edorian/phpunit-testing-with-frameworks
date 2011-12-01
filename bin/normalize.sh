#!/bin/bash

dir=`dirname $0`
dir="$dir/../logs/*"

for file in $dir
do
    sed -i 's/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]/YYYY-MM-DD HH:II:SS/g' $file
    sed -i 's/Time: [0-9][0-9]:[0-9][0-9],/Time: mm:ss,/g' $file
    sed -i 's/Time: [0-9][0-9] seconds,/Time: mm:ss,/g' $file
    sed -i 's/Memory: [0-9][0-9]*.[0-9][0-9]*Mb/Memory: xMb/g' $file
done
