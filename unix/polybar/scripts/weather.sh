#!/bin/bash

# Get weather data from wttr.in with Fahrenheit
WEATHER_DATA=$(curl -s "wttr.in/90623?format=%t+%C&u")

# Extract temperature and condition
TEMP=$(echo "$WEATHER_DATA" | awk '{print $1}' | tr -d '+' | sed 's/°F/°F/')
CONDITION=$(echo "$WEATHER_DATA" | awk '{print $2}')

# Define weather icons based on conditions (case-insensitive)
get_icon() {
    local condition=$(echo "$1" | tr '[:upper:]' '[:lower:]')
    case $condition in
        *"clear"*)
            echo "󰖙";;
        *"sunny"*)
            echo "󰖙";;
        *"cloud"*)
            echo "󰖐";;
        *"overcast"*)
            echo "󰖐";;
        *"rain"*|*"drizzle"*)
            echo "󰖗";;
        *"thunder"*|*"storm"*)
            echo "󰖓";;
        *"snow"*)
            echo "󰼶";;
        *"fog"*|*"mist"*)
            echo "󰖑";;
        *)
            echo "󰖙";;
    esac
}

# Get weather icon
WEATHER_ICON=$(get_icon "$CONDITION")

# Get temperature value (remove °F for comparison)
TEMP_NUM=$(echo "$TEMP" | tr -d '°F')

# Color based on temperature (Fahrenheit)
if [ "$TEMP_NUM" -lt 32 ]; then
    COLOR="%{F#7dcfff}" # freezing
elif [ "$TEMP_NUM" -lt 50 ]; then
    COLOR="%{F#7aa2f7}" # cold
elif [ "$TEMP_NUM" -lt 65 ]; then
    COLOR="%{F#9ece6a}" # cool
elif [ "$TEMP_NUM" -lt 80 ]; then
    COLOR="%{F#e0af68}" # warm
else
    COLOR="%{F#f7768e}" # hot
fi

# Output
echo "$COLOR$WEATHER_ICON $TEMP%{F-}"
