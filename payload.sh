#!/bin/bash

echo PLEASE PUT THIS FOLDER IN ~/things

# sudo check

sudo neofetch

echo you are root!

# install dwm and other stuff

rm -rf dwm

cd ~/ 

mkdir git

cd git

git clone https://github.com/wisearid/dwm

sudo make clean install

cd ~/

sudo pacman -S rofi kitty pcmanfm pavucontrol

echo dwm installed!

# add chaotic aur and other pacman settings

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

rm -rf /etc/pacman.conf

cp ~/things/pacman.conf /etc/pacman,conf

sudo pacman -Sy

sudo pacman -S yay 

sudo pacman -S firefox vlc wine steam

yay -S appimagelauncher


# neovim config and neovim install

sudo pacman -S neovim

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

# Other things I like to have
sudo pacman -S kdenlive gimp

# Change Theme 
sudo pacman -S qt5ct
yay -S vimix-gtk-themes vimix-cursors vimmix-icon-theme

cd /etc/ 
rm -rf environment 
cp ~/things/environment /etc/environment

# oh my zsh install


sudo pacman -S wget

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf .zshrc

cp ~/things/.zshrc ~/.zshrc


# light dm


sudo pacman -S lightdm

cp ~/things/keys.conf /etc/lightdm
cp ~/things/lightdm.conf /etc/lightdm
cp ~/things/lightdm-gtk-greeter.conf /etc/lightdm
cp ~/things/ /etc/lightdm
cp ~/things/users.conf /etc/lightdm
cp ~/things/Xsession /etc/lightdm

systemctl enable lightdm



