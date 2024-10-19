#!/bin/env bash

# author: Raxen001
# email: raxen001@tutamail.com
# notes
# https://github.com/JaKooLit/Fedora-Hyprland/blob/main/install-scripts/Global_functions.sh

echo "!IMPORTANT this script was made by Raxen when he thought"
echo "He was only using to use Fedora based distros"

sudo dnf update -y # and reboot if you are not on the latest kernel
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
	nnn
	)
nvidia_pkgs=(
	akmod-nvidia
	xorg-x11-drv-nvidia-cuda 
	)
copr=(
	zellij
	hack-nerd-fonts
	)
flatpak=(
	cafe.avery.Delfin
	com.github.iwalton3.jellyfin-media-player
	com.github.taiko2k.tauonmb
	com.github.tchx84.Flatseal
	com.mattjakeman.ExtensionManager
	# com.quexten.Goldwarden
	com.rtosta.zapzap
	com.tutanota.Tutanota
	dev.vencord.Vesktop
	io.github.flattool.Warehouse
	io.gitlab.gregorni.Letterpress
	it.fabiodistasio.AntaresSQL
	org.chromium.Chromium
	org.chromium.Chromium.Codecs
	org.freedesktop.Platform
	org.freedesktop.Platform.GL.default
	org.freedesktop.Platform.GL.default
	org.freedesktop.Platform.GL.default
	)

#TODO
# INSTALL 
# 	zsh & chsh
#	RPMFUSION
#	MULTIMEDIA CODECS
# 	NVIDIA
# 	COPR - (ZELLIJ, HACK NERD FONTS)
#	PACKAGES
#	FLATPAKS
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager --enable fedora-cisco-openh264
sudo dnf update @core
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf update @sound-and-video
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686
sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686
sudo dnf install libva-nvidia-driver.{i686,x86_64}
sudo dnf install rpmfusion-nonfree-release-tainted
sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware"
