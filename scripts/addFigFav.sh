#!/bin/sh

echo "Enter the filename of the new entry:";
read favorite;
echo $favorite >> $HOME/figfav;
