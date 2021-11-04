#Environmental Variables
export EDITOR='nvim'
export TERMINAL='alacritty'
export TERM='alacritty'
export BROWSER='firefox'
export TEXTNOTE_DIR="/home/raxen/Documents/personal_notes/NOTES"
export PAGER='less -R'

export ZDOTDIR="/home/raxen/.local/configs/dotfiles/zsh"
export HISTFILE="/home/raxen/.local/configs/dotfiles/zsh/history"
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PASSWORD_STORE_DIR="/home/raxen/.local/configs/personal/password-store"

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

#-------------------------------------------------------------------------------
# Taskwarrior
export TASKRC="$HOME/.config/task/taskrc"
export TASKDATA="$HOME/Documents/personal_notes/Task"

#-------------------------------------------------------------------------------
# nnn
export EDITOR='nvim'
export TERMINAL='alacritty'
export NNN_BMS='g:~/Documents/personal_notes/linux/ricing/;p:~/Music/Playlist;n:~/Documents/personal_notes;o:~/Code/Python/Ongoing;b:~/Documents/personal_notes/board/;d:~/.local/configs/dotfiles;u:~/.local/configs/sourcepkgs;s:~/.local/configs/scripts;'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='n:nmount;f:fzcd;o:fzopen;p:preview-tui;w:wall;a:mpv;'
export NNN_COLORS='23456'

export NNN_FCOLORS='020304050607080910111213'
#
#BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
#export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

export NNN_OPENER=$HOME/.config/nnn/plugins/nuke

#-------------------------------------------------------------------------------
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XDG_MUSIC_DIR="$HOME/Music"
