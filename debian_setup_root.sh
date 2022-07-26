#!/bin/bash

username=$(id -u -n 1000)

apt update
apt install \
alsa-utils \
blueman \
brightnessctl \
curl \
engrampa \
flameshot \
fontforge \
git \
gnome-calculator \
gpick \
gthumb \
gucharmap \
htop \
lxappearance \
lxpolkit \
mousepad \
neofetch \
net-tools \
nitrogen \
notify-send \
obconf \
openbox \
playerctl \
polybar \
psmisc \
pulseaudio \
qutebrowser \
ranger \
rofi \
software-properties-common \
sudo \
synaptic \
thunar \
transmission-gtk \
unzip \
vim \
wget \
xdotool \
xev \
xinput \
xorg \
xprop \
xserver-xorg \
xterm \
python3-pip \
imagemagick \

-y

# fix missing if occured
apt install --fix-missing

pip3 install pywal

echo "exec openbox-session" >> .xinitrc 

/usr/sbin/usermod -aG sudo $(username)
/usr/sbin/usermod -aG audio $(username)

wget -O /tmp/YaHei.Consolas.1.12.zip https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/uigroupcode/YaHei.Consolas.1.12.zip
unzip /tmp/YaHei.Consolas.1.12.zip
unzip /tmp/YaHei.Consolas.1.12.zip
mkdir -p /usr/share/fonts/consolas
mv YaHei.Consolas.1.12.ttf /usr/share/fonts/consolas/
chmod 644 /usr/share/fonts/consolas/YaHei.Consolas.1.12.ttf
cd /usr/share/fonts/consolas
mkfontscale && mkfontdir && fc-cache -fv


echo "Root Setup Completed"