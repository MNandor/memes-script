#!/bin/bash

dir=$(dirname $0)


ddmenu='dmenu -nb #000000 -nf #FF0000 -sf #000000 -sb #FF0000 -i -l 5'

choice=$(cat $dir/memes.txt | cut -f1 | $ddmenu)

echo $choice

cat $dir/memes.txt | grep "$choice" | cut -f2 | xargs -I {} xdotool type "{}"
