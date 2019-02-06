#!/usr/bin/env bash

sh ~/manjaro-i3-dotfiles/setup/software.sh

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "- STARTING CONFIG SETUP                                       -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

echo "terminator"
if [ ! -d ~/.config/terminator ]; then
    mkdir ~/.config/terminator
fi
if [ -f ~/.config/terminator/.config ]; then
    mv ~/.config/terminator/.config ~/.config/terminator/config.pre-dotfiles-bak
fi
cp ~/dotfiles-manjaro-i3/.config/terminator/config ~/.config/terminator/config

echo "i3"
if [ ! -d ~/.i3 ]; then
    mkdir ~/.i3
fi
if [ -f ~/.i3/config ]; then
    mv ~/.i3/config ~/.i3/pre-config.bak
fi
cp ~/manjaro-i3-dotfiles/.i3/config ~/.i3/

echo "i3status"
if [ -f ~/.i3status.conf ]; then
    mv ~/.i3status.conf ~/.pre-i3status.conf.bak
fi
cp ~/dotfiles-manjaro-i3/.i3status.conf ~/ 

echo "vim files"
if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi
cp -r ~/manjaro-i3-dotfiles/.vim ~/.vim

echo "vimrc"
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.pre-vimrc.bak
fi
cp ~/manjaro-i3-dotfiles/.vimrc ~/

echo "profile"
if [ -f ~/.profile ]; then
    mv ~/.profile ~/.pre-profile.bak
fi
cp ~/manjaro-i3-dotfiles/.profile ~/

echo "fish"
if [ ! -d ~/.config/fish ]; then
    mkdir ~/.config/fish
fi
if [ -f ~/.config/fish/fish_variables ]; then
    mv ~/.config/fish/fish_variables ~/.config/fish/pre-fish_variables.bak
fi
cp -r ~/manjaro-i3-dotfiles/.config/fish/* ~/.config/fish

echo "bashrc"
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.pre.bashrc.bak
fi
cp ~/manjaro-i3-dotfiles/.bashrc ~/

echo "compton"
if [ -f ~/.config/compton.conf ]; then 
    mv ~/.config/compton.conf ~/.config/pre-compton.conf.bak
fi
cp ~/manjaro-i3-dotfiles/.config/compton.conf ~/.config/

echo "changing default shell to fish"
sudo chsh -s /etc/fish/
sudo chsh -s /etc/fish/ folb

echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "- FINISHED CONFIG SETUP                                       -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

echo "rebooting"
reboot
