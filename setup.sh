#!/usr/bin/env bash    

set -e

ROOT=$(pwd)

find $ROOT/bin/ -type f -iname "*.sh" -exec chmod +x {} \;

source $ROOT/scripts/helpers.sh

setup_repo() {
    $DOTFILES="$HOME/dotfiles"
    if !$DOTFILES; then
        fancy_echo "linking repo to $HOME/dotfiles"
        ln -s ../dotfiles  $HOME/$filename
    fi
}

install_homebrew() {
    if ! command -v brew >/dev/null; then
        fancy_echo "Installing Homebrew ..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        fancy_echo "Homebrew already installed..."
    fi
}

bootstrap_macos() {
    setup_repo
    install_homebrew
    brew install ansible
}

case $(uname -s) in 
    "Darwin")
        action "setting up dotfiles for macos"
        bootstrap_macos ;;
    *)
        echo "OS is not registered with dotfiles" ;;
esac

