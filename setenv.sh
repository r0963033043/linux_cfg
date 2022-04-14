#!/bin/bash

echo "Please run as sudo"

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



echo "Install packages"
echo "vim tmux git g++ cmake"
apt install -y vim tmux git g++ cmake\
    xbindkeys xdotool


echo "Set environment"
cd $path
mv .bashrc .bashrc.old
mv .vimrc .vimrc.old
mv .tmux.conf .tmux.conf.old

cd -
cp home/.* $path


#mkdir $path/api && pushd $_
#git clone https://github.com/gpakosz/.tmux.git
#mv $path/.tmux.conf $path/.tmux.conf.old
#ln -s $path/api/.tmux/.tmux.conf $path/.tmux.conf

