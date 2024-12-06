#! /bin/bash

# Color gradient array (from cool to hot colors)
colors=(
    "%{F#9ece6a}" # green
    "%{F#7dcfff}" # cyan
    "%{F#7aa2f7}" # blue
    "%{F#bb9af7}" # purple
    "%{F#ff79c6}" # pink
    "%{F#f7768e}" # red
)

# Using wider block characters (reversed order to grow from bottom)
bar="█▇▆▅▄▃▂▁"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -p $pipe ]; then
    unlink $pipe
fi
mkfifo $pipe

# write cava config
config_file="/tmp/cava_config"
echo "
[general]
; Reduced number of bars but made them wider
bars = 16
framerate = 30
sensitivity = 100

[input]
method = pulse
source = auto

[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7

[smoothing]
monstercat = 1
waves = 1
noise_reduction = 0.65

[eq]
1=2.5
2=2
3=1.5
4=1
5=0.8
" > $config_file

# run cava in the background
cava -p $config_file &

# reading data from fifo and adding colors
while read -r cmd; do
    # Convert the raw output to an array
    IFS=';' read -ra ADDR <<< "$cmd"
    output=""
    
    # Process each value
    for i in "${!ADDR[@]}"; do
        value=${ADDR[$i]}
        # Round to nearest integer using awk
        value=$(echo "$value" | awk '{printf "%d\n", $1}')
        
        # Select color based on value
        if (( value == 0 )); then
            color=${colors[0]}
        elif (( value == 1 )); then
            color=${colors[1]}
        elif (( value == 2 )); then
            color=${colors[2]}
        elif (( value == 3 )); then
            color=${colors[3]}
        elif (( value == 4 )); then
            color=${colors[4]}
        else
            color=${colors[5]}
        fi
        
        # Apply color to the bar character and add extra width
        bar_char=$(echo "$value" | sed "$dict")
        output="$output$color$bar_char$bar_char%{F-}"  # Doubled the character for width
    done
    
    echo "$output"
done < $pipe