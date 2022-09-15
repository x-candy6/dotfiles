#!/bin/bash

cd $HOME/dotfiles/ubuntu/
cp -rf .emacs .tmux.conf .vimrc .jsbeautifyrc .prettierrc.json $HOME

sudo snap install starship
sudo apt update && sudo apt upgrade
sudo apt install curl wget

wget https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb
sudo dpkg -i lsd_0.22.0_amd64.deb 
sudo apt install python3.10 emacs npm 

git clone https://github.com/vim/vim
cd vim/src/

sudo make clean; sudo make install

