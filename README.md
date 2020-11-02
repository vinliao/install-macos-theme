# Hey 👋
This is a script for installing MacOS GTK theme, shell, and icons on Gnome desktop environment.

It's based on these projects:
- https://github.com/vinceliuice/WhiteSur-gtk-theme
- https://github.com/vinceliuice/WhiteSur-icon-theme

Not only installing, you can use this to update the theme to the latest one. Usually there will be a bug with the theme/icons when there's a new version of Gnome release, and updating the theme can be as simple as running the script.

Some screenshots:
![one](https://raw.githubusercontent.com/vinliao/install-macos-theme/master/img/one.png)
![two](https://raw.githubusercontent.com/vinliao/install-macos-theme/master/img/two.png)
![three](https://raw.githubusercontent.com/vinliao/install-macos-theme/master/img/three.png)
![four](https://raw.githubusercontent.com/vinliao/install-macos-theme/master/img/four.png)


## Steps
### Installation Depends requirement
- sassc.
- optipng.
- inkscape.
- libglib2.0-dev. `ubuntu 18.04` `debian 10.03` `linux mint 19`
- libxml2-utils. `ubuntu 18.04` `debian 10.03` `linux mint 19`
- glib2-devel. `Fedora` `Redhat`

Fedora/RedHat distros:

    dnf install sassc optipng inkscape glib2-devel

Ubuntu/Mint/Debian distros:

    sudo apt install sassc optipng inkscape

Debian 10:

    sudo apt install sassc optipng inkscape libcanberra-gtk-module libglib2.0-dev libxml2-utils

ArchLinux:

    pacman -S sassc optipng inkscape


### Run install script
Clone the repo and run `./install.sh`

### Update your gnome tweaks setting
Now you just need to update your settings on gnome tweaks. If you haven't installed gnome tweaks yet, install it from your package manager.

Go to Appearace then change Application, Icon, and Shell.

## And oh!
I just want to thank [@vinceluice](https://github.com/vinceliuice) for creating this beautiful theme. It's gorgeous!