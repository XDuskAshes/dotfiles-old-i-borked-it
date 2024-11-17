#!/bin/bash
echo "Detecting OS"
if grep -qi "ubuntu" /etc/os-release; then
    export OS="ubuntu"
elif grep -qi "arch" /etc/os-release; then
    export OS="arch"
else
    export OS="unknown"
fi

./packages.sh
