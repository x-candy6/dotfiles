#!/bin/sh
echo enter todo 
read todo;
echo $todo >> $HOME/Desktop/wanttodo 
cat $HOME/Desktop/wanttodo
