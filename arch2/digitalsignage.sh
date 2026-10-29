# Prior to install
# su
# apt install sudo git
# /usr/sbin/usermod -aG sudo ccboe
# exit and log back in to ccboe
# id ccboe

sudo apt update && sudo apt upgrade

sudo apt install chromium unclutter

sudo mv ~/digitalsignage/arch2/kiosk.sh ~/
chmod +x ~/kiosk.sh
sudo mkdir -p ~/.config/systemd/user/
sudo mv ~/digitalsignage/arch2/kiosk.service ~/.config/systemd/user
sudo mv ~/digitalsignage/arch2/xsession.target ~/.config/systemd/user
sudo mv ~/digitalsignage/arch2/.xsessionrc ~/

systemctl --user enable kiosk
systemctl --user start kiosk
