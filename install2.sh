#!/bin/bash

vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.old; touch ~/.vnc/xstartup

{
#!/bin/sh
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey
x-window-manager &
gnome-session &
gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &
} > "~/.vnc/xstartup"

chmod +x ~/.vnc/xstartup

{
$geometry = "1280x720";
$depth = 24;
} > "~/.vnc/tightvncserver.conf"

echo VNC server started

vncserver
