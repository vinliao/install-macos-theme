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
echo "The themes and icons have been installed on your machine"

read -p "Do you want to change your theme now (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    read -p "Which color scheme do you prefer (light/dark)? " COLOR
    if [ "$COLOR" = "dark" ]; then
        gsettings set org.gnome.desktop.interface gtk-theme "Mojave-dark"
        gsettings set org.gnome.desktop.interface icon-theme "McMojave-circle-dark"
        gsettings set org.gnome.shell.extensions.user-theme name "Mojave-dark"

    elif [ "$COLOR" = "light" ]; then
        gsettings set org.gnome.desktop.interface gtk-theme "Mojave-light"
        gsettings set org.gnome.desktop.interface icon-theme "McMojave-circle"
        gsettings set org.gnome.shell.extensions.user-theme name "Mojave-light"

    else
        echo "Unknown option. Setting it to dark..."
        gsettings set org.gnome.desktop.interface gtk-theme "Mojave-dark"
        gsettings set org.gnome.desktop.interface icon-theme "McMojave-circle-dark"
        gsettings set org.gnome.shell.extensions.user-theme name "Mojave-dark"

    fi
else
    echo
    echo "Alright then, you can change it on your own with gnome tweaks"
    echo "If you haven't installed it yet, make sure to install it with your package manager"
    echo
fi