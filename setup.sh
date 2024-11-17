#!/bin/bash

CDIR=$(pwd)

echo "Ensure all scripts executable"
sudo chmod +x setup/*.sh
echo "Start packages"
./setup/detect.sh

echo "ln -s dotfiles accordingly"
ln -s ~/$CDIR/.bashrc ~/.bashrc
ln -s ~/$CDIR/neofetch/config.conf ~/.config/neofetch/config.conf
ln -s ~/$CDIR/nvim/ ~/.config/nvim/
