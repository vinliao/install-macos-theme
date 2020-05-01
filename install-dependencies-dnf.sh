#!/bin/bash

# check if root or not
if [ `id -u` -ne 0 ]
then
  echo "Please run as root."
  exit 1
fi

dnf install sassc optipng inkscape libcanberra-gtk3 glib2-devel