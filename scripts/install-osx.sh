#!/usr/bin/env bash
# rbenv install 2.5.0
# rbenv global 2.5.0
# rbenv rehash

source ./logging.sh

info "Installing OSX"

cd $HOME/dotfiles
echo $(pwd)

echo "installing oh my zsh"
curl -L http://install.ohmyz.sh | sh

echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)

