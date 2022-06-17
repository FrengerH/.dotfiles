#!/usr/bin/env bash

selected=`cat ~/.config/cht/cht-languages ~/.config/cht/cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.config/cht/cht-languages; then
    query=`echo $query | tr ' ' '+'`
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while read -r -n1 key; do if [[ \${key} == $'\e' ]]; then break; else sleep 1; fi done"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query & while read -r -n1 key; do if [[ \${key} == $'\e' ]]; then break; else sleep 1; fi done"
fi
