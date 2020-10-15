#!/bin/bash

tmux at -t s1
tmux select-pane -t 0
tmux send-keys "ls" C-ma

tmux send-keys -t center_ws "hot" Enter
