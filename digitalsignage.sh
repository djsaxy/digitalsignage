#!/bin/sh

# prior to running this have to have installed git and run git clone https://github.com/djsaxy/digitalsignage

# add graphics driver(s)
sudo pacman -Syu --needed --noconfirm openbox xdg-utils unclutter xorg xdotool chromium vim xf86-video-intel xf86-video-fbdev

mv ~/digitalsignage/.profile /home/ccboe/
sudo mv ~/digitalsignage/autostart /etc/xdg/openbox/autostart
sudo mkdir /etc/systemd/system/getty@tty1.service.d
sudo mv ~/digitalsignage/autologin.conf /etc/systemd/system/getty@tty1.service.d
sudo systemctl enable getty@tty1
