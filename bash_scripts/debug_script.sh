#!/bin/bash

while getopts "d" OPTION; do
    case "$OPTION" in
    d)
        echo "[debug mode]"
        cmd="python3 -m debugpy --listen 5678 --wait-for-client ";;
    ?)
        cmd="python3";;
    esac
done

cmd+="test.py"
$cmd
