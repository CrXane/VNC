#!/bin/bash

sudo add-apt-repository ppa:gnome3-team/gnome3
sudo apt-get update
sudo apt-get install --no-install-recommends ubuntu-desktop gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal tightvncserver -y
sudo apt-get install epiphany-browser -y
sudo apt-get install htop gedit file-roller -y
sudo apt-get install wine -y
sudo apt-get install filezilla -y
sudo apt-get install xfce4-terminal -y
sudo apt-get install synaptic -y

echo "set a password and execute ./install2.sh"
vncserver
