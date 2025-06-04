#!/usr/bin/env zsh

# author: Raxen001
# email: raxen001@tutamail.com
#
# notes
# https://github.com/JaKooLit/Fedora-Hyprland/blob/main/install-scripts/Global_functions.sh
# https://github.com/smittix/fedorable/blob/main/fedorable.sh

# # yazi
sudo dnf copr enable lihaohong/yazi -y
sudo dnf install yazi --setopt=install_weak_deps=False -y

pkgs=(
    alacritty
    zsh
    neovim
    gopass
    mpv
    fzf
    ripgrep
    jq
    hugo
    tldr
    linux-firmware
    acpi
    fd-find
    gnome-tweaks
    python3-neovim
)

sudo dnf install -y $pkgs[@]

