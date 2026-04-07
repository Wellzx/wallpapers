#!/bin/bash
cd ~/wallpapers/wallpapers || exit

git pull --rebase

git add .

if ! git diff-index --quiet HEAD; then
    git commit -m "sync: wallpaper update $(date '+%Y-%m-%d %H:%M:%S')"
    git push
else
    echo "nothing to sync."
fi