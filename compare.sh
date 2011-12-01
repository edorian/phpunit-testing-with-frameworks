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

./bin/generateLogs.sh $1 $2
./bin/normalize.sh
./bin/diff.sh

