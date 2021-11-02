#!/usr/bin/env bash

ROOT=$(pwd)
source $ROOT/scripts/helpers.sh


# if ! command -v brew >/dev/null; then
#  fancy_echo "Installing Homebrew ..."
#    curl -fsS \
#      'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
# fi

# echo "Bundle all macos homebrew dependencies"
# brew update
# brew bundle --cleanup

# echo "setup alacritty"
# source $ROOT/scripts/langs/rust.sh
# source $ROOT/scripts/apps/terminal.sh
# installer

# echo "Symlink dotfiles config"
# ln -s $ROOT/config ~/.config

# echo "setup vscode"
# source $ROOT/scripts/apps/vim.sh

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

action "Setup oh my zsh and load shell"
source $ROOT/scripts/shell/zsh.sh

# source $ROOT/scripts/apps/vscode.sh
