#!/usr/bin/env bash

sudo dnf -y install dnf-plugins-core
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo -y

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker

# sudo groupadd docker
sudo usermod --append --groups=docker $USER
newgrp docker

# test
# docker run -rm hello-world

# container toolkit
sudo dnf install nvidia-container-toolkit nvidia-container-toolkit-selinux

sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker

# test
# docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi
