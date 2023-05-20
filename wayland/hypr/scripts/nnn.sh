#!/bin/bash
# author: RITHESH S <raxen001@tutamail.com>
# TODO: make nnn open on a special workspace and move the nnn to current actual workspace
# press again to put it in special workspace and hide it
TOGGLE="/tmp/nnnterm"
if [[  $(hyprctl clients -j | jq  "[.[]? | .class | contains(\"nnnterm\")] | any") == "false" ]];then
    hyprctl --batch "dispatchers exec [float] alacritty --class nnnterm -e nnn;dispatchers focuswindow nnnterm"
    touch $TOGGLE
elif [ -f "$TOGGLE" ];then
    hyprctl dispatchers "movetoworkspacesilent special:nnn,nnnterm" 
    rm "$TOGGLE"
else
    hyprctl --batch "dispatchers movetoworkspacesilent e+0,nnnterm;dispatchers focuswindow nnnterm"
    touch $TOGGLE
fi


