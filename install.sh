#!/usr/bin/env bash
set -e

LINE='source ~/dotfiles/bash/dev.sh'
if grep -qF "$LINE" ~/.bashrc; then
    echo ".bashrc：已有 source 行，跳过"
else
    echo "$LINE" >> ~/.bashrc
    echo ".bashrc：已在末尾加入 source 行"
fi

if [ -L ~/.vimrc ]; then
    echo ".vimrc：已是软链接，跳过"
elif [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    ln -s ~/dotfiles/vimrc ~/.vimrc
    echo ".vimrc：原文件已备份为 .vimrc.bak，并建立软链接"
else
    ln -s ~/dotfiles/vimrc ~/.vimrc
    echo ".vimrc：已建立软链接"
fi
