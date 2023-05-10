#!/bin/bash
echo Enter app/title:
read name
yabai -m query --windows | grep $name >> echo yabai -m rule --add app='$name' manage=off $HOME/.yabairc
