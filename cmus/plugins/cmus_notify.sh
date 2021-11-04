#! /bin/sh
# Author: RaxenGamer001 <raxen001@tutamail.com>
# Date: 2021-06-06
# Dependency: ffmpeg ffmpegthumbnailer
# Optional: mpc (for mpd support)
# ascii_art:
# 
#  ██▀███   ▄▄▄      ▒██   ██▒▓█████  ███▄    █ 
# ▓██ ▒ ██▒▒████▄    ▒▒ █ █ ▒░▓█   ▀  ██ ▀█   █ 
# ▓██ ░▄█ ▒▒██  ▀█▄  ░░  █   ░▒███   ▓██  ▀█ ██▒
# ▒██▀▀█▄  ░██▄▄▄▄██  ░ █ █ ▒ ▒▓█  ▄ ▓██▒  ▐▌██▒
# ░██▓ ▒██▒ ▓█   ▓██▒▒██▒ ▒██▒░▒████▒▒██░   ▓██░
# ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░▒▒ ░ ░▓ ░░░ ▒░ ░░ ▒░   ▒ ▒ 
#   ░▒ ░ ▒░  ▒   ▒▒ ░░░   ░▒ ░ ░ ░  ░░ ░░   ░ ▒░
#   ░░   ░   ░   ▒    ░    ░     ░      ░   ░ ░ 
#    ░           ░  ░ ░    ░     ░  ░         ░ 
#                                               
img="$HOME"/.cache/music-thumb.png
#---cmus---
if pgrep -x "cmus" >/dev/null
then
    song=$(cmus-remote -Q | grep file | rev | cut -d'/' -f1 | rev | grep -o ".*\." | tr -d ".")
    file=$(cmus-remote -Q | head -n2 | tail -n1 | cut -d' ' -f2- )
    echo $file
#---ncmpcpp--
# ncmpcpp
elif pgrep -x "mpd" >/dev/null
then
    song=$(mpc -f %file% | head -n1 | rev | cut -d'/' -f1 | rev | grep -o ".*\." | tr -d ".")
    file=$HOME/Music/$(mpc -f %file% | head -n1)
fi

ffmpegthumbnailer -m -i "$file" -q 10 -s 0 -o "$img" 
notify-send -i "$img" -a "music" "$song"
