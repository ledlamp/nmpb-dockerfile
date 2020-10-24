#!/bin/bash
export USER=root
export DISPLAY=:1.0
rm -rf /tmp/.X1-lock /tmp/.X11-unix
vncserver :1
/proxy/startproxy.sh
/opt/wine-stable/bin/wine /root/Desktop/NMPB/NMPB-GUI.exe