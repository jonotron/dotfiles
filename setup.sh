#!/bin/bash

# install oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# remove old configs
rmdir ~/.vim
rm ~/.vimrc
rm ~/.bash_profile
rm ~/.gitconfig
rm ~/.zshrc

# symlink the new files
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zshrc ~/.zshrc
