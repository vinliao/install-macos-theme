#!/bin/bash

# check if root or not
if [ `id -u` -ne 0 ]
then
  echo "Please run as root."
  exit 1
fi

# install icon
git clone https://github.com/vinceliuice/McMojave-circle.git
cd McMojave-circle
./install.sh -d ~/.icons
cd ..

# install themes
git clone https://github.com/vinliao/Mojave-gtk-theme.git
cd Mojave-gtk-theme
./install.sh -d ~/.themes
cd ..

# Cleanup
rm -rf McMojave-circle Mojave-gtk-theme

echo
echo "The themes and icons are already installed on your machine."
echo "Now you can change it with gnome tweaks"
echo "If you haven't installed gnome-tweaks yet, install it from your package manager"
echo

# ask whether the user wants to change to the theme now (use gsettings.gnome.blablabla)
# echo "Do you want to change the theme now? [y/N]"
# # if y
# gsettings set org.gnome.desktop.interface gtk-theme "Mojave"
# gsettings set org.gnome.desktop.interface icon-theme "McMojave-circle"