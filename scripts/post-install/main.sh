#!/usr/bin/env zsh

STAGE_1="./stage-1/"
STAGE_2="./stage-2/"

echo "STAGE 1"

# modify gnome keybinds
source "$STAGE_1/0-gnome-keybinds.sh"
echo "Add keybind for Web browser and alacritty;"

# install third party repos terra
source "$STAGE_1/1-third-party.sh"

# install packages
source "$STAGE_1/2-packages.sh"

# install nvidia
source "$STAGE_1/3-nvidia.sh"

echo "Reboot Now!"
sleep 5

echo "STAGE 2"

# install docker
source "$STAGE_2/0-docker.sh"

# install multimedia
source "$STAGE_2/1-multimedia.sh"

# soft link config files
source "$STAGE_2/2-soft-link.sh"

# install flatpaks
source "$STAGE_2/3-flatpak.sh"
