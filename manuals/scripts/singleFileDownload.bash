#!/bin/bash

echo Enter the username
read username
echo Enter repo-name
read repo-name
echo Enter branch-name
read branch-name
echo Without the first and last slash, enter the path
read pathName

curl -OL https://raw.githubusercontent.com/$username/$repo-name/$branch-name/$pathName
