#!/bin/bash

if [[ ! $(hyprctl clients | awk '/class: cmusterm/') ]]; then
    hyprctl dispatchers "exec [workspace special:cmus;] alacritty --class cmusterm -e cmus"
    sleep 0.2
    hyprctl dispatchers togglespecialworkspace cmus
else
    hyprctl dispatchers togglespecialworkspace cmus
fi
