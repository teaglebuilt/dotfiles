#!/usr/bin/env bash
# rbenv install 2.5.0
# rbenv global 2.5.0
# rbenv rehash


brewIn() {
  if brew ls --versions "$1"; then brew upgrade "$1";
  else brew install "$1";
}

source ./logging.sh

info "Installing OSX"

cd $HOME/dotfiles
echo $(pwd)

echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

set -e

echo "installing dotfiles at $HOME"
git clone https://github.com/teaglebuilt/dotfiles

cd dotfiles

echo "installing homebrew packages"
brew bundle --cleanup
