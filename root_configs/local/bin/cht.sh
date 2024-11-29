#!/bin/bash

languages=$(echo "golang c cpp typescript rust" | tr ' ' '\n')
core_utils=$(echo "find xargs sed awk" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)
read -p "Query:" query

if echo "$languages" | grep -qs "$selected"; then
  tmux split-window -h bash -c "curl -s cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
  tmux split-window -h bash -c "curl -s cht.sh/$selected~$query | less"
fi
