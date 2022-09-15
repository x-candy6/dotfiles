#!/bin/bash

declare -i menuButton=9
while [menuButton!=0 ]
do
        echo "Current Menu Item: $menuButton"
        echo "Enter a menu item:"
        echo "\n1) Copy current config to repo:"
        echo "\n2) Copy repo configs to system:"
        read menuButton


done

