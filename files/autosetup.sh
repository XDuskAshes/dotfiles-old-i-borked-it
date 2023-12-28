#!/usr/bin/bash

# move .bashrc's
cd ~
git clone https://github.com/XDuskAshes/dusk-dotfiles.git
cd dusk-dotfiles/files
rm ~/.bashrc
mv .bashrc ~/.bashrc
cd ~

# FIN
echo "Setup done"
rm -rf dusk-dotfiles
