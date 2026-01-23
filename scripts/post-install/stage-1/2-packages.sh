#!/usr/bin/env zsh

# author: Raxen001
# email: raxen001@tutamail.com
#
# notes
# https://github.com/JaKooLit/Fedora-Hyprland/blob/main/install-scripts/Global_functions.sh
# https://github.com/smittix/fedorable/blob/main/fedorable.sh

pkgs=(
    # font
    hack-nerd-fonts
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
    gopls # go language server
    zellij
    tailscale
    yazi
    # driver and firmware
    acpi
    linux-firmware
    libva-utils
    xpadneo
    # application
    steam
    gnome-tweaks
    mpv
    feishin
)

sudo dnf install -y $pkgs[@]
