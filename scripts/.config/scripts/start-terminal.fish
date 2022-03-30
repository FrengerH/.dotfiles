#!/usr/bin/env fish

#set xcape (ps aux | grep -i '[x]cape' | wc -l)
#if test $xcape -ne 1
#    pkill -f xcape
#    xcape -e 'Control_L=Escape' -t 200
#end

set terminals (pgrep alacritty | wc -l)
if test $terminals -lt 2
    tmux attach -t base || tmux new -s base
else
    tmux
end
echo "test"
