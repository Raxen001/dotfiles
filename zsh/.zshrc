# vim: set nowrap

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx '/home/raxen/.local/configs/dotfiles/xinitrc' &> /dev/null
#[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx '/home/raxen/.local/configs/dotfiles/xinitrc' -- vt1 &> /dev/null
#[[ $(fgconsole 2>/dev/null) == 2 ]] && exec Hyprland &> /dev/null
#[[ $(fgconsole 2>/dev/null) == 1 ]] && exec Hyprland &> /dev/null
#[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec startx '/home/raxen/.local/configs/dotfiles/xinitrc' 
#[[ $TERM != "screen" ]] && exec tmux
# set the keyboard rate faster make the input faster
#xset r rate 220 40 
#[[ $TERM != "screen" ]] && exec tmux
#figlet -f Bloody RAXEN | lolcat -ad 1 -s 100

autoload colors && colors
PS1="%{$fg_bold[blue]%} %B%{$fg_bold[yellow]%}%n%{$fg[white]%} : %{$fg[red]%}%~
%{$reset_color%}$ %b"

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/raxen/.local/configs/dotfiles/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#alias ls='ls -F --color=auto'
#alias ll='ls -altuh --color=auto'
#alias la='ls -AF --color=auto'
#-------------------------------------------------------------------------------
alias ls='exa -F --color=auto --color-scale --icons'
alias la='exa -BhFa --color=auto --color-scale --icons'
alias ll='exa -ahHlF -t modified --color=auto'
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
alias python='python -q'
#alias st='st & disown'
alias ytd='youtube-dl -q --no-playlist `xclip -selection clipboard -o` & disown'
alias ytdp='youtube-dl -q --yes-playlist `xclip -selection clipboard -o` & disown'
alias ins='sudo cp config.def.h config.h && sudo make clean install'

alias lynx='lynx -cfg=~/.config/lynxrc'
#alias newsboat='newsboat --url-file=/home/raxen/.local/configs/dotfiles/newsboat/rss-feed --cache-file=/home/raxen/.cache/newsboat.db'
alias newsboat='newsboat --cache-file=/home/raxen/.cache/newsboat.db'
# alias redyt='bash ~/.local/configs/scripts/redyt.sh'
alias nnn='nnn -Aacd'

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
#
#-------------------------------------------------------------------------------
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
# zellij - terminal multiplexer
#
function zr () { zellij run --name "$*" -- zsh -ic "$*";}
function zrf () { zellij run --name "$*" --floating -- zsh -ic "$*";}
function ze () { zellij edit "$*";}
function zef () { zellij edit --floating "$*";}
#-------------------------------------------------------------------------------
#
# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
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
#source ~/.local/cargo/env
#
#zsh syntax
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#zsh auto suggest
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.local/configs/sourcepkgs/nnn/misc/quitcd/quitcd.bash_zsh
source ~/.local/configs/dotfiles/zsh/hugo_comple.zsh
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
