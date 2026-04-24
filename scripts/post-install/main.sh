#!/usr/bin/env zsh
#
# author: raxen001
# email: raxen001@tutamail.com

STAGES="./stages"

echo ":[starting]:"
sudo dnf update -y --refresh

# modify gnome keybinds
source "$STAGES/0-gnome-keybinds.sh"

# soft link config files
source "$STAGES/1-soft-link.sh"

# install third party repos terra
source "$STAGES/2-third-party.sh"

# install packages
source "$STAGES/3-packages.sh"

# install multimedia
source "$STAGES/4-multimedia.sh"

# install flatpaks
source "$STAGES/5-flatpak.sh"

# install nvidia
source "$STAGES/6-nvidia.sh"

# install docker
source "$STAGES/7-docker.sh"

