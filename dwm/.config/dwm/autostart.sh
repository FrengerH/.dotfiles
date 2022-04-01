#!/bin/bash
#picom --config $HOME/.config/compton.conf > /dev/null &
autorandr -c

monitors=$(xrandr --listmonitors | wc -l)

for i in $(seq $((monitors-1)))
do
    nitrogen --set-zoom-fill --head=$((i-1)) $HOME/.config/leftwm/themes/leftwm-theme-dracula-rounded/background.jpg
done

sleep 1 
dwmblocks
