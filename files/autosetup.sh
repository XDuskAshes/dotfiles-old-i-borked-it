#!/usr/bin/bash

# move .bashrc's
cd ~
echo "Assuming everything's already been git clone'd"
cd dusk-dotfiles/files
rm ~/.bashrc
mv .bashrc ~/.bashrc
cd ~

# FIN
echo "Setup done"
rm -rf dusk-dotfiles
