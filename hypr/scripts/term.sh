#!/bin/bash

if [[ ! $(hyprctl clients | awk '/class: term/') ]]; then
    hyprctl dispatchers "exec [workspace special:term;] alacritty --class term"
    sleep 0.1;
    hyprctl dispatchers togglespecialworkspace term
else
    hyprctl dispatchers togglespecialworkspace term
fi
