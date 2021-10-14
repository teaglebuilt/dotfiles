#!/usr/bin/env bash

ROOT=$(pwd)

source $ROOT/scripts/helpers.sh

if ! command -v brew >/dev/null; then
 fancy_echo "Installing Homebrew ..."
   curl -fsS \
     'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
fi

echo "Bundle all macos homebrew dependencies"
brew update
brew bundle --cleanup

echo "setup alacritty"
source $ROOT/scripts/langs/rust.sh
source $ROOT/scripts/apps/terminal.sh
installer

echo "setup vscode"
source $ROOT/scripts/apps/vim.sh
source $ROOT/scripts/apps/vscode.sh