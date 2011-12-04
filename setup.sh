#!/bin/bash

git submodule init
git submodule update

vendor=`dirname $0`"/vendor/"

php $vendor/symfony/vendors.php

cd $vendor/doctrine2
git submodule init
git submodule update


