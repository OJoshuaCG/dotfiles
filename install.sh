#!/bin/bash

echo " >_ Iniciando..."
echo "    | Actualizando sistema..."
sudo pacman -Syyu

echo "    | Instalando soporte AUR..."
sudo pacman -S git base-devel

echo "    | Instalando yay..."
mkdir aur && cd "$_"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "    | Tools..."
sudo pacman -S locate wget curl zip unzip tar p7zip bashtop htop gparted
sudo pacman -S clang rust
yay -S bat lsd
sudo pacman -Fy
sudo pacman -Fs netstat

echo "  > | Instalando dev-ojoshuacg..."
echo "    |-- java"
sudo pacman -S jdk-openjdk jre-openjdk
echo "    |-- python"
sudo pacman -S python python-pip
echo "    |-- nodejs"
sudo pacman -S nodejs npm
echo "    |-- csharp"
sudo pacman -S dotnet-runtime dotnet-sdk aspnet-runtime
echo "    |-- php"
sudo pacman -S php php-sqlite php-pgsql
echo "    |-- postgresql"
sudo pacman -S postgresql
echo "    |-- mariadb / mysql"
sudo pacman -S mariadb
echo "    |-- docker"
sudo pacman -S docker
echo "    |-- dev utilities"
sudo pacman -S alacritty kitty terminator konsole neovim
yay -S visual-studiocode-bin sublime-text-4 insomnia
# beekeeper-studio gammy

echo "  > | Day and day"
echo "    |-- 1st part"

sudo pacman -S vivaldi opera
yay -S google-chrome microsoft-edge-stable-bin  nodejs-nativefier
yay -S anydesk-bin flameshot-git opera-ffmpeg-codecs teamviewer ttf-ms-fonts ttf-twemoji vivaldi-snapshot-ffmpeg-codecs wps_office whatsapp-nativefier

echo "    |-- 2nd part"

sudo pacman -S copyq cups kolourpaint libreoffice-still pavucontrol system-config-printer thunderbird vlc
yay -S epson-inkjet-printer-201310w epson-inkjet-printer-201401w splatmoji-git ttf-wps-fonts wps-office-mime