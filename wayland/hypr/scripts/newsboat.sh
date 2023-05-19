#!/bin/bash

if [[ ! $(hyprctl clients | awk '/class: newsboat/') ]]; then
    hyprctl dispatchers "exec [workspace special:newsboat;] alacritty --class newsboat -e newsboat"
    sleep 0.2
    hyprctl dispatchers togglespecialworkspace newsboat
else
    hyprctl dispatchers togglespecialworkspace newsboat
fi
