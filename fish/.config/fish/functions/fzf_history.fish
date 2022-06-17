function fzf_history --description "Search command history with fzf"
#    history merge
    history \
        | fzf --height=10 \
        --info=hidden \
        | read -lz cmd
    and commandline -- $cmd
    commandline -f repaint
end
