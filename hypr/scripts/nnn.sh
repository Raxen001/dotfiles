#!/bin/bash
# author: RITHESH S <raxen001@tutamail.com>
# TODO: make nnn open on a special workspace and move the nnn to current actual workspace
# press again to put it in special workspace and hide it
#
# dependencies: xdotool
#
if [[ ! $(hyprctl clients | awk '/class: nnnterm/') ]]; then

    hyprctl dispatchers "exec [float] alacritty --class nnnterm -e nnn"
    sleep 0.2
    hyprctl dispatchers movetoworkspace
else
    hyprctl dispatchers movetoworkspace nnn
fi
