#!/bin/bash

file="$1"

if [ -z "$file" ]
then
    echo "Usage: ./file-check.sh test.txt"
    exit 1
fi

if [ -f "$file" ]
then
    echo "$file exists"
else
    echo "$file does not exist"
fi
