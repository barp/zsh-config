#!/bin/bash
cp .vimrc ~/.vimrc
sudo HOME=${HOME} INSTALL_VIMRC=1 nvim
mkdir -p ~/.config/nvim/
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/.vim ~/.local/share/nvim/site

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

pip3 install ranger-fm pynvim


mkdir -p ~/.config/ranger/

cat <<EOF > ~/.config/ranger/rc.conf

default_linemode devicons

set show_hidden true

EOF

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons


