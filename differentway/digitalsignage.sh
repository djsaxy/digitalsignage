# Prior to install
# su
# apt install sudo git
# /usr/sbin/usermod -aG sudo ccboe
# id ccboe

sudo apt update && sudo apt upgrade

sudo apt install chromium-browser unclutter

mv ~/digitalsignage/differentway/kiosk.sh ~/
chmod +x kiosk.sh
mkdir -p ~/.config/systemd/user/
mv ~/digitalsignage/differentway/kiosk.service ~/.config/systemd/user
mv ~/digitalsignage/differentway/xsession.target ~/.config/systemd/user
mv ~/digitalsignage/differentway/.xsessionrc ~/

systemctl --user enable kiosk
systemctl --user start kiosk
