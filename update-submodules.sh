#!/bin/bash

echo "+===== UPDATING SUBMODULES =====+"
git pull --recurse-submodules && git submodule update --recursive --remote

echo "+===== PUSHING CHANGES =====+"
# Add submodules repetitively here.
git add nvim
git commit -m "Submodule update" -m "Update to submodules in this repository done by update-submodules.sh at $(date '+%Y-%m-%d %I:%M:%S %p')"
git push -u origin main

echo "Changes should have pushed. If not, you're on your own roflmao"
