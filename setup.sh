#!/bin/bash

dir=$(pwd)
cd .vim/bundle/
git clone https://github.com/gmarik/vundle.git

cd ~/
ln -s $dir/.vimrc .vimrc
ln -s $dir/.vimrc.after .vimrc.after
ln -s $dir/.vim .vim
ln -s $dir/.tmux.conf .tmux.conf
