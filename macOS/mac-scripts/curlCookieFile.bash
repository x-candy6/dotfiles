#!/bin/bash
echo Enter url
read url
echo Enter file name
read filename
curl --cookie $HOME/cookies.txt $url --output filename
