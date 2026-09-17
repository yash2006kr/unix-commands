#!/bin/bash

echo "Enter name"
read name

echo "Enter age"
read age

if [ $age -ge 18 ]
then
    echo "$name is eligible"
else
    echo "$name is not eligible"
fi
