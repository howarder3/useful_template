#!/bin/bash

# set ~/.tmux.conf
script=$(
cat <<EOF
set -g default-terminal "tmux-256color"
set -g history-limit 10000
set -g mouse on

bind-key -T root F1 select-window -t 1
bind-key -T root F2 select-window -t 2
bind-key -T root F3 select-window -t 3
bind-key -T root F4 select-window -t 4
bind-key -T root F5 select-window -t 5
bind-key -T root F6 select-window -t 6
bind-key -T root F7 select-window -t 7
bind-key -T root F8 select-window -t 8
bind-key -T root F9 select-window -t 9
bind-key -T root F10 select-window -t 10
bind-key -T root F11 select-window -t 11
bind-key -T root F12 select-window -t 12
EOF
)
echo "$script" > ~/.tmux.conf
