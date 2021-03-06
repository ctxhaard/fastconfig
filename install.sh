#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/.ssh/
mkdir -p ~/.vim/bundle/

rm ~/.ssh/config
ln -s $DIR/ssh-config ~/.ssh/config

rm ~/.texarc
ln -s $DIR/texarc ~/.texarc

rm ~/.zshrc
ln -s $DIR/zshrc ~/.zshrc

rm ~/.vimrc
ln -s $DIR/vimrc ~/.vimrc

rm ~/mount_ctomasin.sh
ln -s $DIR/mount_ctomasin.sh ~/mount_ctomasin.sh

echo source ~/.texarc >> ~/.bashrc
echo source ~/.texarc >> ~/.bash_profile

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
cd -

