#!/bin/bash
#
# By Vishnu Easwaran E written on 5th April 2020.
#
# MIT License
#


sudo pacman -S --needed --noconfirm yay \

yay -S --nocleanafter --norebuild --noredownload --removemake --noconfirm --needed --mflags MAKEFLAGS="-j$(nproc)"\
                   mpv \
                   calibre \
                   gparted \
                   arduino \
                   cmake \
                   eclipse-cpp \
                   firefox \
                   gimp \
                   inkscape \
                   kicad kicad-library\
                   telegram-desktop \
                   transmission-gtk \
                   vim \
                   neovim \
                   flameshot \
                   libreoffice-fresh \
                   libreoffice-fresh-en-gb \
                   manjaro-printer \
                   htop \
                   binutils \
                   base-devel \
                   texlive-core \
                   texstudio \
                   docker \
                   ruby \
                   skypeforlinux-stable-bin \
                   brave-bin \
                   mailspring-bin \
                   vscodium-bin \
                   slack-desktop \
                   spotify \
                   clion \
                   sublime-text2 \
                   simplenote-electron-bin \
                   freecad-appimage \
                   popcorntime-bin
                   

