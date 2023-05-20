#!/bin/bash
# author: RITHESH S <raxen001@tutamail.com>
TOGGLE="/tmp/nnnterm.lock"
if [[  $(hyprctl clients -j | jq  "[.[]? | .class | contains(\"nnnterm\")] | any") == "false" ]];then
    hyprctl --batch "dispatchers exec [float] alacritty --class nnnterm -e nnn;dispatchers focuswindow nnnterm"
    touch $TOGGLE
elif [ -f "$TOGGLE" ];then
    hyprctl --batch "dispatchers togglefloating ^(nnnterm)\$;dispatchers movetoworkspace special,^(nnnterm)\$" 
    rm "$TOGGLE"
else
    hyprctl --batch "dispatchers movetoworkspace +0,^(nnnterm)\$;dispatchers togglefloating ^(nnnterm)\$; dispatchers focuswindow ^(nnnterm)\$; dispatchers centerwindow"
    touch $TOGGLE
fi


