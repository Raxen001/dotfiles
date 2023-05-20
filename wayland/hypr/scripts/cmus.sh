#!/bin/bash

if [[ ! $(hyprctl clients | awk '/class: cmusterm/') ]]; then
    hyprctl --batch "dispatchers exec [workspace special:cmus] alacritty --class cmusterm -e cmus;dispatchers togglespecialworkspace cmus"
else
    hyprctl dispatchers togglespecialworkspace cmus
fi
