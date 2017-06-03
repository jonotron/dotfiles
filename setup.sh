#!/bin/bash

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# symlink the new files
ln -is ~/dotfiles/.vimrc ~/.vimrc
ln -is ~/dotfiles/.bash_profile ~/.bash_profile
ln -is ~/dotfiles/.ackrc ~/.ackrc
ln -is ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -is ~/dotfiles/.gitconfig ~/.gitconfig
ln -is ~/dotfiles/.zshrc ~/.zshrc
ln -is ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -is ~/dotfiles/.jshintrc ~/.jshintrc
ln -is ~/dotfiles/.hyper.js ~/.hyper.js

# setup vim
mkdir -p ~/.vim/backup
#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#vim +BundleInstall +qall
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# setup z
git clone https://github.com/rupa/z.git ~/dotfiles/vendors/rupa/z
touch ~/.z

# change shell to zsh
chsh -s /bin/zsh
