#!/bin/bash

cd .vim/bundle/
git clone https://github.com/gmarik/vundle.git

cd ~/
rm -r .bashrc .vimrc .vimrc.after .vim .tmux.conf

ln -s $dir/.bashrc .bashrc
ln -s $dir/.vimrc .vimrc
ln -s $dir/.vimrc.after .vimrc.after
ln -s $dir/.vim .vim
ln -s $dir/.tmux.conf .tmux.conf
