#!/bin/sh

doas apk update && apk upgrade
doas setup-xorg-base
doas apk add vim mesa-egl xf86-video-fbdev xf86-video-vesa dbus setxkbmap kbd xrandr xset chromium unclutter-xfixes

# add .profile to home directory of ccboe
mv ~/digitalsignage/alpine/.profile ~/

# add .xinitrc to home directory of ccboe
mv ~/digitalsignage/alpine/.xinitrc ~/

cd
chmod u+x .profile
chmod u+x .xinitrc
