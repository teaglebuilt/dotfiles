#!/usr/bin/env bash

echo Installing OSX

cd $HOME/dotfiles
echo $(pwd)

echo "installing oh my zsh"
curl -L http://install.ohmyz.sh | sh

echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)