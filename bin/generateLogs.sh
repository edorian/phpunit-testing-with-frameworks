#!/bin/bash

usage() {
    echo
    echo "Usage:" $0 phpunit-left phpunit-right
    echo "  phpunit-left/right: path to phpunit executables"
    echo
    echo "Error: $@"
    echo 
    exit 1
}

[ "$#" -eq 2 ] || usage "Two arguments required $# given"

left=$1
right=$2

dir=`dirname $0`

cd $dir
cd ..
abspath=`pwd`

flags="--coverage-text"

vendorDirectoryList=./vendor/*

for project in $vendorDirectoryList
do
    cd $abspath
    cd $project
    projectName=`basename $project`
    leftCmd="$left $flags" 
    echo "Running: $leftCmd for $projectName"
    $leftCmd 2>&1 > $abspath"/logs/"$projectName.left.log
    rightCmd="$right $flags" 
    echo "Running: $rightCmd for $projectName"
    $rightCmd 2>&1 > $abspath"/logs/"$projectName.right.log
done

