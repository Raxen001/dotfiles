##-------------------------------------------------------------------------------
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XDG_MUSIC_DIR="$HOME/Music"

# export QT_QPA_PLATFORMTHEME="qt5ct"
# export QT_QPA_PLATFORM="wayland;xcb"
# export SDL_VIDEODRIVER="wayland"
#-------------------------------------------------------------------------------
#Environmental Variables
## PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$XDG_DATA_HOME/go/bin:$PATH"
export PATH="$HOME/.local/npm/bin:$PATH"

export EDITOR='nvim'
export TERMINAL='alacritty'
# set `TERM` for icons in tmux
export TERM='alacritty'
# export BROWSER='firefox'
export TEXTNOTE_DIR="/home/raxen/Documents/personal_notes/NOTES"
export PAGER='less -R'
#export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#    nvim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
#    
export NPM_CONFIG_PREFIX="$HOME/.local/npm"
export ZDOTDIR="$HOME/.local/configs/dotfiles/zsh"
export HISTFILE="$HOME/.cache/zsh/histfile"
export HISTSIZE=1000 			# the number of items for the internal history list
export SAVEHIST=1000 			# maximum number of items for the history file
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PASSWORD_STORE_DIR="$HOME/.local/configs/personal/password-store"
export LESSHISTFILE='~/.cache/lessht'
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export GNUPGHOME="/home/raxen/.local/configs/personal/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$HOME/.local/cargo"
export RUSTUP_HOME="$HOME/.local/rustup"
export WINEPREFIX=/home/raxen/Games/wine
export ELINKS_CONFDIR="$HOME/.config/elinks"
export SSB_HOME="$XDG_DATA_HOME"/zoom
#export MPD_HOST=$HOME/.config/mpd/socket
export PATH=/usr/bin:$PATH
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
#-------------------------------------------------------------------------------
# Taskwarrior
export TASKRC="$HOME/.config/task/taskrc"
export TASKDATA="$HOME/Documents/personal_notes/Task"

#-------------------------------------------------------------------------------
# nnn
#export NNN_BMS='g:~/Documents/personal_notes/linux/ricing/;p:~/Music/Playlist;n:~/Documents/personal_notes;o:~/Code/Python/Ongoing;b:~/Documents/personal_notes/board/;d:~/.local/configs/dotfiles;u:~/.local/configs/sourcepkgs;s:~/.local/configs/scripts;'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='f:fzcd;p:preview-tui;w:wall;a:fzplug;c:cmusq;'
export NNN_COLORS='23456'
export NNN_FCOLORS='020304050607080910111213'
#
export NNN_OPENER=$HOME/.config/nnn/plugins/nuke
#BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
#export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
#
#-------------------------------------------------------------------------------
export NNN_OPENER=$HOME/.config/nnn/plugins/nuke
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
#-------------------------------------------------------------------------------
#NODE
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history 
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
#-------------------------------------------------------------------------------
##Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker 
#export DOCKER_HOST=unix:///run/user/1000/docker.sock
#-------------------------------------------------------------------------------
# Yuzu
#export __GL_THREADED_OPTIMIZATIONS=1
. "/home/raxen/.local/cargo/env"
