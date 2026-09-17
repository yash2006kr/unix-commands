#!/bin/bash

echo "Enter age"
read age

if [ $age -ge 18 ]
then
    echo "Eligible"
else
    echo "Not eligible"
fi
