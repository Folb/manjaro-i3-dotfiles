#!/usr/bin/env bash

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "- STARTING SOFTWARE INSTALLATION                              -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

echo "fish"
sudo pacman -S --noconfirm fish

echo "pacaur"
sudo pacman -S --noconfirm pacuaur

echo "chromium" 
sudo pacman -S --noconfirm chromium

echo "bluetooth"
sudo pacman -S --noconfirm pulseaudio-bluetooth
sudo pacman -S --noconfirm bluez-utils # installs bluetoothctl

echo "python & pip"
sudo pacman -S --noconfirm python
sudo pacman -S --noconfirm python-pip

echo "Spotify"
yaourt -S --noconfirm spotify

echo "Gnome calculator"
yaourt -S --noconfirm gnome-calculator

echo "FontAwesome"
# sudo pacman -S --noconfirm ttf-font-awesome
echo "Use fontawesome 4 so spaces around fonts don't render as glyphs"
yaourt -S --noconfirm otf-font-awesome-4

echo "noto-fonts"
pacaur -S --noconfirm noto-fonts

echo "unzip"
sudo pacman -S --noconfirm unzip

echo "f.lux"
yaourt -S --noconfirm xflux

echo "removing palemoon"
sudo pacman -Rs --noconfirm palemoon-bin

echo "To enable Bluetooth speakers, add the following to /etc/bluetooth/main.conf under [General]"
echo "Enable=Source,Sink,Media,Socket"
echo "https://wiki.archlinux.org/index.php/bluetooth#Audio"

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "- FINISHED SOFTWARE INSTALLATION                              -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
