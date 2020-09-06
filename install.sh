#!/bin/bash
cp .vimrc ~/.vimrc
sudo HOME=${HOME} INSTALL_VIMRC=1 vim
mkdir -p ~/.config/nvim/
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/.vim ~/.local/share/nvim/site
