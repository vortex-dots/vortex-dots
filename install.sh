#!/bin/bash

set -e

echo "Starting vortex-dotfiles installation..."

if [ "$EUID" -eq 0 ]; then
  echo "Please do not run this script as root (sudo)."
  exit 1
fi


if ! command -v pacman &> /dev/null; then
  echo "Error: pacman not found. This script is designed for Arch Linux."
  exit 1
fi

echo "Installing required packages from official repositories..."
sudo pacman -S --needed --noconfirm \
  mango kitty swaybg xdg-desktop-portal-gtk polkit-kde-agent \
  grim slurp wl-clipboard satty pcutils

if ! command -v msnap &> /dev/null; then
    echo "Installing msnap for screenshots..."
    curl -fsSL https://raw.githubusercontent.com/xtheeq/msnap/main/install.sh | bash
else
    echo "msnap is already installed."
fi

echo "Copying configuration files..."
cd "$(dirname "$0")" || exit

mkdir -p ~/.config

cp -r mango ~/.config/
cp -r kitty ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r gtk-4.0 ~/.config/
cp -r fontconfig ~/.config/

cp -r dms/. ~/.config/DankMaterialShell/


echo "Checking GPU..."
if lspci | grep -i -E 'vga|3d' | grep -qi 'nvidia', then
    echo "NVIDIA GPU detected. The default config is ready for you."
else
    echo "AMD/Intel GPU detected. Removing NVIDIA-specific settings from config..."
    
    sed -i 'nvidia/d; /QSG_RHI_BACKEND/d' ~/.config/mango/config.conf
    echo "Config optimized for your GPU."
fi

echo "Done! Please restart your MangoWM session or reboot your PC."
