. $HOME/.config/fish/extra-aliases.fish

alias l="ls -lvh"
alias ll="ls -lvAh"

alias ab="tmux switch -t base"

alias conf="cd ~/.config"
alias projects="cd ~/projects"
alias programming="cd ~/programming"

#alias nvim="tmux neww -n nvim /usr/bin/nvim"
#alias ssh-conf="tmux neww nvim ~/.ssh/config"
#alias tmux-conf="tmux neww nvim ~/.config/tmux/tmux.conf"
#alias fish-conf="tmux neww nvim ~/.config/fish/config.fish"
#alias alacritty-conf="tmux neww nvim ~/.config/alacritty"
#alias leftwm-conf="tmux neww nvim ~/.config/leftwm"

alias ssh-conf="nvim ~/.ssh/config"
alias tmux-conf="nvim ~/.config/tmux/tmux.conf"
alias fish-conf="nvim ~/.config/fish/config.fish"
alias alacritty-conf="nvim ~/.config/alacritty"
alias leftwm-conf="nvim ~/.config/leftwm"

alias ssh="TERM=xterm-256color /usr/bin/ssh"


set -gx XDG_CONFIG_HOME ~/.config/

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

if status is-interactive
    if string match -q -- 'tmux*' $TERM
        set -g fish_vi_force_cursor 1
    end
end

#function fish_mode_prompt --description 'Displays the current mode'
#    switch $fish_bind_mode
#        case default
#            set_color --bold --background red white
#            printf '\e]50;CursorShape=0\x7'
#            echo '[N]'
#        case insert
#            set_color --bold --background green white
#            printf '\e]50;CursorShape=1\x7'
#            echo '[I]'
#        case replace_one
#            set_color --bold --background green white
#            printf '\e]50;CursorShape=2\x7'
#            echo '[R]'
#        case visual
#            set_color --bold --background magenta white
#            echo '[V]'
#    end
#
#    set_color normal
#end

function fish_user_key_bindings
  fish_vi_key_bindings --no-erase insert
  bind -M insert \cn accept-autosuggestion
  bind --preset -M insert \cl echo test
  bind --erase --preset -M insert \cl echo test
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

