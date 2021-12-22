#!/usr/bin/env bash

# Oh-My-ZSH INSTALL
printf "\n%s\n" "Installing oh-my-zsh into $HOME" && sleep 1
export ZSH=$HOME/.oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then # OMZ already installed, but located in user's home dir
    printf "%s\n" "oh-my-zsh is already installed in home directory, moving to new $HOME directory..."
    mv "$HOME/.oh-my-zsh" "$HOME"
    cd "$HOME/.oh-my-zsh" && git pull
else
    if [ -d "$HOME/.oh-my-zsh" ]; then # OMZ installed in install dir
        printf "%s\n" "oh-my-zsh is already installed in $HOME."
        cd "$HOME/.oh-my-zsh" && git pull
    else
        printf "oh-my-zsh is not installed. Installing...\n" # OMZ not installed
        sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" "" --unattended
    fi
fi

source $HOME/.zshrc