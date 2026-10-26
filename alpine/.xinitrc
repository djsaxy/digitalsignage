#!/bin/sh

if xrandr | grep "DP-1 disconnected"; then
    xrandr --output eDP-1 --mode auto
else
    xrandr --output eDP-1 --off --output DP-1 --primary --mode auto
fi;;

# turn off screensaver
xset -dpms
xset s off
xset s noblank

# url
url="https://www.calhoun.k12.al.us/Chromebit/signage/web/am.html"

exec chromium-browser $url --window-position=0,0 --kiosk --no-sandbox --full-screen --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --ignore-gpu-blacklist --disable-quic --enable-fast-unload --enable-tcp-fast-open ---enable-native-gpu-memory-buffers --enable-gpu-rasterization --enable-zero-copy --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/tmp
