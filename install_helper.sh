#!/bin/bash
set -e
set -x

sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get -q -y install tmux htop curl direnv silversearcher-ag

# reset the git insteadOf settings for DataDog repos
git config --global url."git@github.com:DataDog".insteadOf "https://github.com/DataDog"

echo "copying dot files"
cp ~/dotfiles/.zshrc ~/.zshrc
cp -fR ~/dotfiles/.claude ~/

echo "configuring git"
git config --global user.name "Tony Park"
git config --global user.email "tony.park@datadoghq.com"
git config --global pull.rebase true

echo "docker helper"
ddtool docker install-helper
