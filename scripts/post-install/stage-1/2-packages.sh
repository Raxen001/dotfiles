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
    dnf-utils
    uuid
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
    bun
    deno
    npm
    clippy
    rustfmt
    zellij
    tailscale
    yazi
    ncdu
    lazygit
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
    scopebuddy
    vulkan
    vulkan-tools
    libva-utils
    podman
    podman-compose
)

sudo dnf install -y --skip-unavailable --skip-broken $pkgs[@]
