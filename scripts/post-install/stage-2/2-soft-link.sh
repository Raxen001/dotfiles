#!/usr/bin/env zsh
CONFIG_DIR=~/.local/configs/dotfiles

# remove zsh if present already
rm ~/.zshrc
rm ~/.zshenv
rm ~/.zprofile

ln -s "$CONFIG_DIR"/zsh/zshrc ~/.zshrc
ln -s "$CONFIG_DIR"/zsh/zshenv ~/.zshenv
ln -s "$CONFIG_DIR"/zsh/zprofile ~/.zprofile

mv ~/.ssh ~/.ssh.bak
ln -s "$CONFIG_DIR/../personal/ssh" ~/.ssh

WHITE_LIST=(alacritty git lazygit nvim zellij mpv yazi starship.toml)

for item in ${WHITE_LIST};
do
    echo "LINKED $item"
    rm -rf "$XDG_CONFIG_HOME/$item"
    ln -s  "$CONFIG_DIR/$item" "$XDG_CONFIG_HOME/$item"
done
