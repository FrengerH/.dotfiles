. $HOME/.config/fish/extra-aliases.fish

alias l="ls -lh"
alias ll="ls -lah"

alias ab="tmux switch -t base"

alias conf="cd ~/.config"
alias projects="cd ~/projects"
alias programming="cd ~/programming"

#alias nvim="tmux neww -n nvim /usr/bin/nvim"
#alias ssh-conf="tmux neww nvim ~/.ssh/config"
#alias tmux-conf="tmux neww nvim ~/.tmux.conf"
#alias fish-conf="tmux neww nvim ~/.config/fish/config.fish"
#alias alacritty-conf="tmux neww nvim ~/.config/alacritty"
#alias leftwm-conf="tmux neww nvim ~/.config/leftwm"

alias ssh-conf="nvim ~/.ssh/config"
alias tmux-conf="nvim ~/.tmux.conf"
alias fish-conf="nvim ~/.config/fish/config.fish"
alias alacritty-conf="nvim ~/.config/alacritty"
alias leftwm-conf="nvim ~/.config/leftwm"

alias ssh="TERM=xterm-256color /usr/bin/ssh"


set -gx XDG_CONFIG_HOME ~/.config/

function fish_user_key_bindings
  fish_vi_key_bindings
end

bind -M insert \cn accept-autosuggestion

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

