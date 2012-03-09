#!/bin/bash

# remove old configs
rmdir ~/.vim
rm ~/.vimrc
rm ~/.bash_profile
rm ~/.gitconfig

# symlink the new files
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
