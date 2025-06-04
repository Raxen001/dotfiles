#!/bin/bash
# author: RITHESH S <raxen001@tutamail.com>
#
# TODO: check if the nnn window is open in the present workspace ID if not moveit there
# Toggle floating based on if it is floating or not
TOGGLE="/tmp/nnnterm.lock"
if [[  $(hyprctl clients -j | jq  "[.[]? | .class | contains(\"nnnterm\")] | any") == "false" ]];then
    hyprctl --batch "dispatchers exec [float] alacritty --class nnnterm -e nnn;dispatchers focuswindow nnnterm"
    touch $TOGGLE
elif [ -f "$TOGGLE" ];then
    hyprctl --batch "dispatchers togglefloating ^(nnnterm)\$;dispatchers movetoworkspacesilent special,^(nnnterm)\$" 
    rm "$TOGGLE"
else
    hyprctl --batch "dispatchers movetoworkspacesilent +0,^(nnnterm)\$;dispatchers togglefloating ^(nnnterm)\$; dispatchers focuswindow ^(nnnterm)\$; dispatchers centerwindow"
    touch $TOGGLE
fi


