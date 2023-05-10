#!/bin/bash

echo "hello"
read -e fName
lName=$(echo `pwd`/$fName)
echo "$lName"

printf "\n••••••••••••••••••\n"
