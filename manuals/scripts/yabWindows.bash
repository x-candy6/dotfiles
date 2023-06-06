#!/bin/bash
yabai -m query --windows | grep -i -A 1 '"app":' | sed 's/--//g';
