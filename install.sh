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
test -e xstartup || wget https://raw.githubusercontent.com/CrXane/VNC/master/xstartup
mv xstartup ~/.vnc/xstartup
test -e tightvncserver.conf || wget https://raw.githubusercontent.com/CrXane/VNC/master/tightvncserver.conf
mv tightvncserver.conf ~/.vnc/tightvncserver.conf
test -e .reset-vnc || wget https://raw.githubusercontent.com/CrXane/VNC/master/.reset-vnc
mv .reset-vnc ~/.reset-vnc

chmod +x ~/.vnc/xstartup
chmod +X ~/.vnc/tightvncserver.conf
chmod +x ~/.reset-vnc

echo "VNC installation complete"
echo "Now run vncserver to setup the login details"
echo "If ever having issues logging in"
echo "Execute bash ~/.reset-vnc"
