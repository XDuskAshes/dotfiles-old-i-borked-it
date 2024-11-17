#!/bin/bash

# nvim
cd nvim
git pull origin main
cd ..
git add nvim
git commit -m "[submodule] Update nvim" -m "Done automatically with update-submodules.sh on $(date)"
git push -u origin main
