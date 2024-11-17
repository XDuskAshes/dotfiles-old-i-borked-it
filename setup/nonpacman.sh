#!/bin/bash

echo "Creating dedicated subdir for git clones and others"
mkdir non_pacman
cd non_pacman

echo "Installing yay"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Installing snap"
https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor
sudo ln -s /var/lib/snapd/snap /snap

echo "[1] - Install Spotify via Snap"
echo "[2] - Install Spotify via Yay"
echo "[3] - I'll figure it out"
read -p "Enter a number: " SPOTIFY_CHOICE
if [ $SPOTIFY_CHOICE == "1" ] then
	echo "Installing Spotify"
	sudo snap install spotify
elif [ $SPOTIFY_CHOICE == "2" ] then
	echo "Installing Spotify"
	yay spotify
elif [ $SPOTIFY_CHOICE == "3" ] then
	echo "Omitting Spotify"
fi

echo "Installing Lazygit"
yay lazygit-git
