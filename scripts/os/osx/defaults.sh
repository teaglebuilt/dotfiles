#!/usr/bin/env bash

source $ROOT/scripts/helpers.sh

fancy_echo_line "backspace speed"
defaults write NSGlobalDomain InitialKeyRepeat 35
defaults write NSGlobalDomain KeyRepeat -1

fancy_echo_line "show hidden files"
defaults write com. apple.finder AppleShowAllFiles -bool true

fancy_echo_line "disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false