#!/bin/bash

# install icon
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh -d ~/.icons
cd ..

# install themes
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -d ~/.themes
cd ..

echo
echo "The themes and icons have been installed on your machine"

read -p "Do you want to change your theme now (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    read -p "Which color scheme do you prefer (light/dark)? " COLOR
    if [ "$COLOR" = "dark" ]; then
        gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
        gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-dark"
        gsettings set org.gnome.shell.extensions.user-theme name "WhiteSur-dark"

    elif [ "$COLOR" = "light" ]; then
        gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-light"
        gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-light"
        gsettings set org.gnome.shell.extensions.user-theme name "WhiteSur-light"

    else
        echo "Unknown option. Setting it to dark..."
        gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
        gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-dark"
        gsettings set org.gnome.shell.extensions.user-theme name "WhiteSur-dark"

    fi
else
    echo
    echo "Alright then, you can change it on your own with gnome tweaks"
    echo "If you haven't installed it yet, make sure to install it with your package manager"
    echo
fi
