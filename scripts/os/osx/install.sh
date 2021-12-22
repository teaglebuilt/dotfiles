#!/usr/bin/env bash

ROOT=$(pwd)
source $ROOT/scripts/helpers.sh


if ! command -v brew >/dev/null; then
 fancy_echo "Installing Homebrew ..."
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Bundle all macos homebrew dependencies"
brew update
brew bundle --cleanup

echo "setup alacritty"
source $ROOT/scripts/langs/rust.sh
source $ROOT/scripts/apps/terminal.sh
installer

echo "Symlink dotfiles config"
ln -s $ROOT/config ~/.config

echo "setup shell"
source $ROOT/scripts/shell/zsh.sh

echo "setup vscode"
source $ROOT/scripts/apps/vim.sh
# source $ROOT/scripts/apps/vscode.sh

shopt -s dotglob
for f in $ROOT/dots/*; do
    filename="${f##*/}"
    if [ -d "$f" ]; then
        echo "$f"\n
    else
        ln -s -f $f $HOME/$filename
        ok "symlink created for $HOME/$filename"
    fi
done
