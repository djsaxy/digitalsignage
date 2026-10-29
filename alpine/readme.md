# Boot from USB
  # login as root with no password
  setup-alpine

# reboot and login as user setup during setup-alpine

doas apk add git nano

# setup-xorg-base might make this unnecessary
# nano /etc/apk/repositories
# uncomment community repository, save and exit

git clone https://github.com/djsaxy/digitalsignage
cd ~/digitalsignage/alpine
chmod +x alpinedigitalsign.sh
./alpinedigitalsign.sh
  # wait for it to run

nano .xinitrc
  # update url depending on where device is going
  # update if statement for xrandr display names depending on device being used - delete if statement if not necessary

doas nano /etc/inittab
  # in inittab, change:
    tty1::respawn:/bin/login -f ccboe
  # save and exit

# if ssh is needed
  doas nano /etc/ssh/sshd_config
  # in config change
    PermitRootLogin yes
    PasswordAuthentication yes
    PermitEmptyPasswords no
  # save and exit
  doas service sshd restart

reboot
