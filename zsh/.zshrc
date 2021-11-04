# vim: set nowrap
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx '/home/raxen/.local/configs/dotfiles/xinitrc' &> /dev/null
[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec startx '/home/raxen/.local/configs/dotfiles/xinitrc' 
[[ -z $DISPLAY && $XDG_VTNR -eq 3 ]] && exec startx '/home/raxen/.local/configs/dotfiles/xinitrc' 
#[[ $TERM != "screen" ]] && exec tmux
# set the keyboard rate faster make the input faster
#xset r rate 227 44 

autoload colors && colors
PS1="%{$fg_bold[blue]%} %B%{$fg_bold[yellow]%}%n%{$fg[white]%} : %{$fg[red]%}%~
%{$reset_color%}$ %b"
#[[ $TERM != "screen" ]] && exec tmux
#figlet -f Bloody RAXEN | lolcat -ad 1 -s 100

# The following lines were added by compinstall
HISTFILE="~/.local/configs/dotfiles/zsh/histfile"
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate 
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/raxen/.local/configs/dotfiles/zsh/.zshrc'
setopt autocd extendedglob nomatch 

autoload -Uz compinit
compinit -d "/home/raxen/.local/configs/dotfiles/zsh/zcompdump-$ZSH_VERSION" 
# End of lines added by compinstall

#-------------------------------------------------------------------------------
#Environmental Variables
export EDITOR='nvim'
export TERMINAL='alacritty'
# set `TERM` for icons in tmux
export TERM='alacritty'
export BROWSER='firefox'
export TEXTNOTE_DIR="/home/raxen/Documents/personal_notes/NOTES"
export PAGER='less -R'
#export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#    nvim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

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
export NNN_PLUG='n:nmount;f:fzcd;o:fzopen;p:preview-tui;w:wall;a:fzplug'
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

#alias ls='ls -F --color=auto'
#alias ll='ls -altuh --color=auto'
#alias la='ls -AF --color=auto'
alias ls='exa -F --color=auto --color-scale --icons'
alias la='exa -BhFa --color=auto --color-scale --icons'
alias ll='exa -alF -t modified --color=auto'
alias cat='bat --theme=gruvbox-dark'

alias qr='qrencode -t ansi'

alias nvidia-settings="nvidia-settings --config=/home/raxen/.config/nvidia/settings"

alias ip='ip -c'
alias tree='tree -C'

alias vi='nvim'
alias vim='nvim'
alias novim='nvim -u ~/.local/configs/dotfiles/nvim/norc.vim'

alias zathura='zathura --fork'
alias glow='glow -p'
alias pacman='pacman --color=auto'
alias ncdu='ncdu --color dark'
alias grep='grep --color=always'
alias rg='rg --color=always'
alias less='less -r'
alias online='python -q /home/raxen/.local/bin/gui_online.py'
alias python='python -q'
#alias st='st & disown'
alias ytd='youtube-dl -q --no-playlist `xclip -selection clipboard -o` & disown'
alias ytdp='youtube-dl -q --yes-playlist `xclip -selection clipboard -o` & disown'
alias ins='sudo cp config.def.h config.h && sudo make clean install'
alias lynx='lynx -cfg=~/.config/lynxrc'
#alias newsboat='newsboat --url-file=/home/raxen/.local/configs/dotfiles/newsboat/rss-feed --cache-file=/home/raxen/.cache/newsboat.db'
alias newsboat='newsboat --cache-file=/home/raxen/.cache/newsboat.db'
alias redyt='bash ~/.local/configs/scripts/redyt.sh'
alias nnn='nnn -acd'

alias ran='cd ~/Music/Playlist/Random'
alias rax='cd /home/raxen/Music/Playlist/Raxen_Gamer001/'
alias uni='cd ~/Music/Playlist/Unique'
alias pla='cd ~/Music/Playlist'
alias pop='cd ~/Music/Playlist/pop'

alias scr='cd /home/raxen/.local/configs/scripts'
alias dot='cd /home/raxen/.local/configs/dotfiles'
alias sou='cd /home/raxen/.local/configs/sourcepkgs'
alias riv='cd /home/raxen/Music/Playlist/Riverdale'
alias rivtri='cd /home/raxen/Music/Tributes/Riverdale_tribute'
alias not='cd /home/raxen/Documents/personal_notes'
alias ong='cd /home/raxen/Code/Python/Ongoing'

alias -s {png,jpg,jpeg,webp}=sxiv
alias -s pdf=zathura
alias -s {mp3,mp4,mkv,webm}=mpv
alias -s {json,c,cpp,py,txt,html,vim,md,txt}=nvim
#-------------------------------------------------------------------------------
man() {
        LESS_TERMCAP_md=$'\e[01;31m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[01;44;33m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[01;32m' \
        command man "$@"
}
#-------------------------------------------------------------------------------
# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#---------------------------------------------------------------------


source /home/raxen/.local/cargo/env
source ~/.local/configs/sourcepkgs/nnn/misc/quitcd/quitcd.bash_zsh
source ~/.local/configs/dotfiles/zsh/hugo_comple.zsh 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
