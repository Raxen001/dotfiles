sudo dnf update -y
sudo dnf install akmod-nvidia -y

sudo dnf install xorg-x11-drv-nvidia-cuda -y
sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y

sudo dnf mark user akmod-nvidia -y

# sudo dnf install rpmfusion-nonfree-release-tainted
# sudo dnf swap akmod-nvidia akmod-nvidia-open
