#!/bin/bash

echo "Choose install path:"
echo "  1)Default   1"
echo "  2)Customize 2"
echo "  3)Quit      3"
echo -n "Answer: "

read n
case $n in
    1) echo "Use default path" ~; path=~;;
    2) read -p "Enter user path: " path;;
    3) exit;;
esac

#echo $path

echo "Set timezone"
sudo timedatectl set-timezone Asia/Taipei
ls -l /etc/localtime
date


echo "Install packages:  vim tmux git g++ cmake xbindkeys xdotool"
sudo apt update
sudo apt -y upgrade
sudo apt install -y vim tmux git g++ cmake\
    xbindkeys xdotool


echo "Set environment"
cd $path
mv .bashrc .bashrc.old
mv .vimrc .vimrc.old
mv .tmux.conf .tmux.conf.old

cd -
cp home/.* $path


echo "Install vim Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

