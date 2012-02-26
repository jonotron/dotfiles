#!/bin/bash
# setup git
git config --global user.name "Jonathan Bowers"
git config --global user.email "jonotron@gmail.com"
git config --global color.ui auto

# remove old configs
rmdir ~/.vim
rm ~/.vimrc
rm ~/.bash_profile

# symlink the new files
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
