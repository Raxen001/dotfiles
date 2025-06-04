#!/bin/bash

if [[ ! $(hyprctl clients | awk '/class: dict/') ]]; then
    hyprctl dispatchers "exec [workspace special:dict;] alacritty --class dict -e sdcv --color=auto"
    sleep 0.2
    hyprctl dispatchers togglespecialworkspace dict
else
    hyprctl dispatchers togglespecialworkspace dict
fi
