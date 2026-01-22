#!/usr/bin/env bash
sudo dnf update -y

# download nvidia drivers
sudo dnf install akmod-nvidia -y
sudo dnf install xorg-x11-drv-nvidia-cuda -y
sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y

# mark so dnf autoremove doesn't remove it
sudo dnf mark user akmod-nvidia -y

# sudo dnf install rpmfusion-nonfree-release-tainted
# sudo dnf swap akmod-nvidia akmod-nvidia-open
