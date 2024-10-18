# Reinstall checklist

install necessariy programs

## packages

- zsh
  - `chsh` && `/bin/zsh`
- alacritty
- neovim
- gopass
- mpv

- fzf
- ripgrep
- fd
- jq
- hugo
- python3
- tailscale
- rust
    - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- docker
- mpv

## tui

- nnn
- yazi
- fx
- atac
- jqp

## flatpaks

- flatseal
- warehouse
- extension manager
- tweaks
- chromium
- tutamail
- vesktop (discord something)
- zapzap
- Geary (mail)
- antares_sql

- junction
- papers
- TauonBox
- delfin, jellyfin

## Things to do after installing

### Firefox

- Sign into Firefox account
- Sign into firefox container (why can't the sync it :cry:)
- Sign into listenbrainz and last.fm
  - Sign into webscrobber plugin
  - Sign into TauonBox
- Sign into Anilist.co
  - Sign into MalSync plugin
- Sign into steam
  - Sign into protondb and steamdb
- Sign into github
  - Sign into Tailscale and leetcode

### Chromium

- Create 2 profiles one for STUDY and personal
  - Personal
    - Sign into 3 personal accounts
  - STUDY
    - Sign into Study account

### GNOME

- Online accounts Sign into 4 accounts
- Enable Variable Refresh Rate and fractional scaling (Experimental for now)
  - `gsettings set org.gnome.mutter experimental-features "['variable-refresh-rate']"`
  - `gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"`
  - both `gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer', 'variable-refresh-rate']"`

## CONFIGS

- link alacritty `ln -s alacrity/ ~/.config/alacritty`
- link zellij `ln -s zellij/ ~/.config/zellij`
- link neovim `ln -s nvim ~/.config/nvim`
- link zshrc `ln -s zsh/zshrc ~/.zshrc`
- link zshenv `ln -s zsh/zshenv ~/.zshenv`
- link gitconfig `ln -s git ~/.config/git`
- link ssh `ln ssh/ ~/.ssh`

## GAMES

- Steam
  - Use steam authenticator
- Vesktop(discord)
  - Use discord and scan qr
- HeroicGamesLauncher
  - Ubisoft signin
  - gog sign
- Bottles
- ProtonPlus
