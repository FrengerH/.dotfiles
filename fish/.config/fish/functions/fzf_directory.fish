function fzf_directory --description "Search directories with fzf"
    find ~ -type d -print 2>/dev/null \
        | fzf --height=10 \
        --info=hidden \
        | read -lz cmd
    and commandline -- $cmd
    commandline -f repaint
end
