# Hey 👋
This is a script for installing MacOS GTK theme, shell, and icons on Gnome desktop environment.

It's based on these projects:
- https://github.com/vinceliuice/WhiteSur-gtk-theme
- https://github.com/vinceliuice/WhiteSur-icon-theme

Not only installing, you can use this to update the theme to the latest one. Usually there will be a bug with the theme/icons when there's a new version of Gnome release, and updating the theme can be as simple as running the script.

# Steps
## Install dependencies
If you use dnf (fedora, rhel), run `dnf install sassc`

If you use apt (ubuntu and friends), run `sudo apt install sassc libcanberra-gtk-module libglib2.0-dev`

## Run install script
Clone the repo and run `./install.sh`

## Update your gnome tweaks setting
Now you just need to update your settings on gnome tweaks. If you haven't installed gnome tweaks yet, install it from your package manager.

Go to Appearace then change Application, Icon, and Shell.
