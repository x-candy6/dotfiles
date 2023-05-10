#!/bin/bash

echo enter app/title name:
read name
yabai -m query --windows | grep $name
