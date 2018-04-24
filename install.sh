#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/.ssh/
mkdir -p ~/.vim/bundle/

ln -s $DIR/ssh-config ~/.ssh/config
ln -s $DIR/texarc     ~/.texarc
ln -s $DIR/vimrc      ~/.vimrc

echo source ~/.texarc >> ~/.bashrc
echo source ~/.texarc >> ~/.bash_profile

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall

