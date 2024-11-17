#!/bin/bash

if [ "$OS" == "ubuntu" ]; then
  echo "Install packages via apt"
  cat pkglist/package-list-ubuntu.txt | sudo apt-get install
  ./nonapt.sh
elif [ "$OS" == "arch" ]; then
  echo "Install packages via pacman"
  cat pkglist/package-list-arch.txt | sudo pacman -Syu
  ./nonpacman.sh
else
  echo "I don't know what this system is so I won't install anything through package management. Sorry."
fi

