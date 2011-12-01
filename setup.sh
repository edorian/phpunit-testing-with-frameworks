#!/bin/bash

git submodule init

vendor=`dirname $0`"/vendor/"

php $vendor/symfony/vendors.php

