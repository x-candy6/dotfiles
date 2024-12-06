#!/bin/bash

# Define a more extensive color gradient for a smoother transition
colors=("#ff0000" "#ff3300" "#ff6600" "#ff9900" "#ffcc00" "#ffff00" "#ccff00" "#99ff00" "#66ff00" "#33ff00" "#00ff00" "#00ff33" "#00ff66" "#00ff99" "#00ffcc" "#00ffff" "#00ccff" "#0099ff" "#0066ff" "#0033ff" "#0000ff" "#3300ff" "#6600ff" "#9900ff" "#cc00ff" "#ff00ff" "#ff00cc" "#ff0099" "#ff0066" "#ff0033")

# Path to the Polybar configuration file
config_file="$HOME/.config/polybar/default.ini"

# Infinite loop to cycle through colors
while true; do
    for color in "${colors[@]}"; do
        # Update the Polybar configuration with the new border color
        sed -i "s/border-color = .*/border-color = $color/" "$config_file"

        # Restart Polybar to apply changes
        polybar-msg cmd restart

        # Wait for a longer duration for a slower transition
        sleep 5  # 5 seconds for testing, adjust as needed
    done
done