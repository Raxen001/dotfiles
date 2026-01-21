#!/usr/bin/env zsh

# author: Raxen001
# email: raxen001@tutamail.com
#
# notes
# https://github.com/JaKooLit/Fedora-Hyprland/blob/main/install-scripts/Global_functions.sh
# https://github.com/smittix/fedorable/blob/main/fedorable.sh

pkgs=(
    # font
    hack-fonts
    # dev
    alacritty
    zsh
    gopass
    fzf
    ripgrep
    jq
    hugo
    qrencode
    eza
    bat
    starship
    tldr
    fd-find
    uv
    neovim
    python3-neovim # neovim dependency
    zellij
    tailscale
    yazi
    # tools
    acpi
    linux-firmware
    libva-utils
    # application
    gnome-tweaks
    mpv
    feishin
)

sudo dnf install -y $pkgs[@]
