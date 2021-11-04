#!/bin/sh

userresources=$HOME/.local/configs/dotfiles/Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ `tty` = "/dev/tty1" ]; then
    "$HOME/.local/configs/scripts/startup.sh" &
    XDG_SESSION_TYPE=x11
    while :; do
    ssh-agent dwm
    done
fi 
if [ `tty` = "/dev/tty2" ]; then
    XDG_SESSION_TYPE=x11
    exec startxfce4
fi 
if [ `tty` = "/dev/tty3" ]; then
    XDG_SESSION_TYPE=x11
    exec enlightenment_start
fi 
