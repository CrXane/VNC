#!/bin/bash

sudo add-apt-repository ppa:gnome3-team/gnome3
sudo apt-get update
sudo apt-get install --no-install-recommends ubuntu-desktop gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal tightvncserver
sudo apt-get install epiphany-browser

echo "set a password and execute ./install2.sh"
vncserver
