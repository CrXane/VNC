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

mkdir ~/.vnc
mv xstartup ~/.vnc/xstartup
mv tightvncserver.conf ~/.vnc/tightvncserver.conf
mv .reset-vnc ~/.reset-vnc

chmod +x ~/.vnc/xstartup
chmod +X ~/.vnc/tightvncserver.conf
chmod +x ~/.reset-vnc

echo "VNC installation complete"
echo "If ever having issues logging in"
echo "Go to Home directory and execute ./.reset-vnc"
