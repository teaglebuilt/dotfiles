#!/usr/bin/env bash

echo "Linux"
sudo apt-get update

echo """"
    Installing git
""""

sudo apt-get -y install git


echo "installing dotfiles at $HOME"
git clone https://github.com/teaglebuilt/dotfiles

source "$HOME/dotfiles/scripts/logging.sh"
info "Symlink dotfiles to home dir at $HOME"


ln -s $HOME/dotfiles/.vimrc .vimrc
ln -s $HOME/dotfiles/vim .vim
ln -s $HOME/dotfiles/zsh/.zshrc .zshrc
ln -s $HOME/dotfiles/zsh/.aliases .aliases
ln -s $HOME/dotfiles/.oh-my-zsh .oh-my-zsh
ln -s $HOME/dotfiles/functions functions
ln -s $HOME/dotfiles/git/.gitconfig .gitconfig
ln -s $HOME/dotfiles/git/.gitconfig-work .gitconfig-work

cd dotfiles

git submodule update --init --recursive