#!/bin/bash

DIR=$(dirname "${BASH_SOURCE[0]}")

mkdir -p ~/.ssh/

ln -s $DIR/ssh-config ~/.ssh/config
ln -s $DIR/texarc     ~/.texarc
ln -s $DIR/vimrc      ~/.vimr.c

