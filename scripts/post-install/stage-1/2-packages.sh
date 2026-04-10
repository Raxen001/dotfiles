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
    python3-devel # development package
    gopls # go language server
    cargo
    clippy
    rustfmt
    zellij
    tailscale
    yazi
    ncdu
    # driver and firmware
    acpi
    linux-firmware
    xpadneo
    # application
    gnome-tweaks
    mpv
    feishin
    # games
    steam
    protontricks
    mangohud
    gamemode
    gamescope
    vulkan
    vulkan-tools
    libva-utils
    Sunshine
)

sudo dnf install -y $pkgs[@]
