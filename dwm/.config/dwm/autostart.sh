#!/bin/bash
#picom --config $HOME/.config/compton.conf > /dev/null &
autorandr -c

monitors=$(xrandr --listmonitors | wc -l)

for i in $(seq $((monitors-1)))
do
    nitrogen --set-zoom-fill --head=$((i-1)) $HOME/.config/dwm/background.png
done

sleep 1 
dwmblocks
