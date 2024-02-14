#!/usr/bin/bash

home () { cd ~; }

home

echo "Performing software installs first."

echo "[AUR|1/2] yay"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
home

echo "[AUR|2/2] snap"
https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
home

echo "AUR Stuff done. Installing additional pacman packages."

sudo pacman -S vim neofetch firefox texlive-basic texlive-latex texlive-bin discord github-cli lazygit

echo "Installing programs via snap."

echo "[SNAP|1/1] Spotify"
sudo snap install spotify

echo "Installing programs via yay."

echo "[YAY|1/3] Cava"
yay cava

echo "[YAY|2/3] CraftOS-PC"
yay craftos-pc

echo "[YAY|3/3] Prism Launcher"
yay prismlauncher

home

neofetch

echo "Dotfiles messery with git. You're expected to git config on your own."

git clone https://github.com/XDuskAshes/dusk-dotfiles.git ~/.dotfiles/
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/neofetch/config.conf ~/.config/neofetch/config.conf
ln -s ~/.dotfiles/for-fun/spinner.sh ~/spinner.sh # This is for giggles, lol
ln -s ~/.dotfiles/i3/config ~/.config/i3/config

echo "Done all."
