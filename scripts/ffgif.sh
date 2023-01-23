#!/bin/sh
echo  "Enter video file:"
read -e -p input;
ffmpeg -nostdin -i ${input}  -vf "fps=30,scale=960:-1:flags=lanczos" -loop 0 output.gif

