#!/bin/bash

echo "Installing Vortex Dotfiles..."

mkdir -p ~/.config

cp -r mango ~/.config/
cp -r kitty ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r gtk-4.0 ~/.config/
cp -r dms ~/.config/
cp -r fontconfig ~/.config/

echo "Done! Please restart your MangoWM session or reboot PC"
