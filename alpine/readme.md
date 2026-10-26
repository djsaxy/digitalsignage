
# Boot from USB
# login as root with no password
setup-alpine

su
apk update && apk upgrade
apk add nano

nano /etc/apk/repositories
# uncomment community repository, save and exit
apk update

# if ssh is needed
nano /etc/ssh/sshd_config
# in config change
  PermitRootLogin yes
  PasswordAuthentication yes
  PermitEmptyPasswords no
# save and exit
service sshd restart

setup-xorg-base
apk add mesa-egl xf86-video-fbdev xf86-video-vesa dbus setxkbmap kbd xrandr xset

nano /etc/inittab
# in inittab
  tty1::respawn:/bin/login -f ccboe
# save and exit

apk add chromium

# add .profile to home directory of ccboe
# add .xinitrc to home directory of ccboe

chmod u+x .profile
chmod u+x .xinitrc
