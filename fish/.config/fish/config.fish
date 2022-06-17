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

set -U fish_cursor_default block
set -U fish_cursor_insert line
set -U fish_cursor_replace_one underscore
set -U fish_cursor_visual block
set -U fish_cursor_unknow line

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      echo -en "\e[2 q"
      set_color -o brred
      echo "[N] "
    case insert
      echo -en "\e[6 q"
      set_color -o brgreen
      echo "[I] "
    case replace_one
      echo -en "\e[4 q"
      set_color -o bryellow
      echo "[R] "
    case visual
      echo -en "\e[2 q"
      set_color -o brmagenta
      echo "[V] "
    case '*'
      echo -en "\e[2 q"
      set_color -o brred
      echo "[?] "
  end
  set_color normal
end

#if status is-interactive
    if string match -q -- 'tmux*' $TERM
        set -g fish_vi_force_cursor 1
    end
#end

function fish_user_key_bindings
  fish_vi_key_bindings --no-erase insert
  bind -M insert \cn accept-autosuggestion
  bind --preset -M insert \cl echo test
#  bind --erase --preset -M insert \cl echo test
  bind -m insert v 'tmux copy-mode; commandline -f repaint-mode'
end

function fish_greeting
end

