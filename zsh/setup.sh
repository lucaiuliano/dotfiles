#!/bin/sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Backup current settings
cp ~/.zshrc ~/.zshrc.bkp
cp -r ~/.oh-my-zsh ~/.oh-my-zsh.bkp

# Replace them with my dotfiles
rm -rf ~/.zshrc ~/.oh-my-zsh
ln -s `pwd`/.zshrc ~/.zshrc
ln -s `pwd`/.oh-my-zsh ~/.oh-my-zsh

