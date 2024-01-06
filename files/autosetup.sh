#!/usr/bin/bash

# move .bashrc's
cd ~
echo "Assuming everything's already been git clone'd"
cd dusk-dotfiles/files
rm ~/.bashrc
mv .bashrc ~/.bashrc
cd ~

echo "Doing additional software stuff"

echo "yay first"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# pacman
echo "Pacman"
sudo pacman -S neofetch firefox textlive-basic texlive-latex texlive-bin discord github-cli lazygit

echo "Snap"
https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# ^  This is how I get snap, its pretty much just for spotify lmfao

echo "Cava"
yay cava

echo "Remember to turn on the apparmor stuff with snap."

# setup the github cli

gh auth login
gh auth setup-git

# FIN
cd ~
echo "Setup done"
rm -rf dusk-dotfiles
