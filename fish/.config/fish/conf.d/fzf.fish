if not status is-interactive
    exit
end

bind -M insert \cf "fzf_directory"
bind -M insert \cr "fzf_history"
