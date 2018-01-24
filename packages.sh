#!/bin/bash

# Update information and upgrade
sudo apt update
sudo apt upgrade

# Firefox
sudo apt install firefox

# Vim
sudo apt install vim-gnome

# SSH
sudo apt install openssh-server

# Git
sudo apt install git

# Latex
sudo apt install texlive-full
sudo apt install texmaker

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - # install GPG key
sudo apt install apt-transport-https # make apt work with https resources
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list # stable version
sudo apt update
sudo apt install sublime-text

# gcc, g++, libc, make, etc.
sudo apt install build-essential

# Java
sudo apt install default-jre
sudo apt install default-jdk

# Inkscape
sudo apt install inkscape
