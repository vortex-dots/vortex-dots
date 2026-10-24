#!/bin/bash

echo "Installing Vortex Dotfiles..."

cd "$(dirname "$0")" || exit

mkdir -p ~/.config

cp -r mango ~/.config/
cp -r kitty ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r gtk-4.0 ~/.config/
cp -r dms/. ~/.config/DankMaterialShell
cp -r fontconfig ~/.config/

echo "Done! Please restart your MangoWM session or reboot PC"
