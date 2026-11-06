#!/usr/bin/env bash
set -e

LINE='source ~/dotfiles/bash/dev.sh'
if grep -qF "$LINE" ~/.bashrc; then
    echo ".bashrc：已有 source 行，跳过"
else
    echo "$LINE" >> ~/.bashrc
    echo ".bashrc：已在末尾加入 source 行"
fi
