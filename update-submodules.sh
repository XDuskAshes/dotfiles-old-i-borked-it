#!/bin/bash

# nvim
cd nvim
OLD_COMMIT=$(git rev-parse HEAD)
echo CURRENT_COMMIT
git pull origin main
NEW_COMMIT=$(git rev-parse HEAD)
cd ..
git add nvim
git commit -m "[submodule] Update nvim" -m "Scripted commit sync (update-submodules.sh) for nvim:" -m "    Old commit: ${OLD_COMMIT}" -m "    New commit: ${NEW_COMMIT}" -m "Done automatically with update-submodules.sh on $(date)"

# Push all submodule commits
git push -u origin main
