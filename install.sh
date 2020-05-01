#!/bin/bash

# install icon
git clone https://github.com/vinceliuice/McMojave-circle.git
cd McMojave-circle
./install.sh -d ~/.icons
cd ..

# install themes
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git
cd Mojave-gtk-theme
./install.sh -d ~/.themes
cd ..

echo
echo "The themes and icons are already installed on your machine."
echo "Now you can change it with gnome tweaks"
echo "If you haven't installed gnome-tweaks yet, install it from your package manager"
echo
