#!/bin/bash

username=$(id -u -n 1000)

apt update
apt install \
net-tools \
xorg \
xserver-xorg \
openbox \
nitrogen \
rofi \
thunar \
xterm \
qutebrowser \
lxappearance \
obconf \
vim \
htop \
alsa-utils \
pulseaudio \
lxpolkit \
flameshot \
sudo \
git \
gwenview \
playerctl \
engrampa \
unzip \
curl \
wget \
synaptic \
gpick \
psmisc \
software-properties-common \
blueman \
mousepad \
brightnessctl \
neofetch \
polybar \
-y

apt install --fix-missing

echo "exec openbox-session" >> .xinitrc 

/usr/sbin/usermod -aG sudo $(whoami)
/usr/sbin/usermod -aG audio $(whoami)

wget -O /tmp/YaHei.Consolas.1.12.zip https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/uigroupcode/YaHei.Consolas.1.12.zip
unzip /tmp/YaHei.Consolas.1.12.zip
unzip /tmp/YaHei.Consolas.1.12.zip
mkdir -p /usr/share/fonts/consolas
mv YaHei.Consolas.1.12.ttf /usr/share/fonts/consolas/
chmod 644 /usr/share/fonts/consolas/YaHei.Consolas.1.12.ttf
cd /usr/share/fonts/consolas
mkfontscale && mkfontdir && fc-cache -fv




echo "Root Setup Completed"