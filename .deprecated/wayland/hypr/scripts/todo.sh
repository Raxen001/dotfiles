#!/bin/bash

if [[ ! $(hyprctl clients | awk '/class: todo/') ]]; then
    hyprctl dispatchers "exec [workspace special:todo;] alacritty --class todo -e calcurse"
    sleep 0.2
    hyprctl dispatchers togglespecialworkspace todo
else
    hyprctl dispatchers togglespecialworkspace todo
fi
