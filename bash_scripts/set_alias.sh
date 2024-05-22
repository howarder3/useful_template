#!/bin/bash
alias pythona="python3 -m debugpy --listen 5678 --wait-for-client"
alias gs="git status"
alias gp="git push"
alias gb="git branch"
alias gba="git branch -a"
alias gba="git branch -a"

# file
alias rp="realpath"
alias ls='ls --color=auto'
alias ll='ls -al'
alias l='ls'
alias f="find ~+ -name"

# instead origin cmd
alias grep='grep --color=auto'
alias ..='cd ..'

# useful function
function unzip2(){
    local filename="$1"
    local dir="${filename%.*}"
    mkdir -p "$dir"
    unzip "filename" -d "$dir"
}
