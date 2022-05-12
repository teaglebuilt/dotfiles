#!/usr/bin/env bash

ROOT=$(pwd)
source $ROOT/scripts/helpers.sh

fancy_echo_line "backspace speed"
defaults write NSGlobalDomain InitialKeyRepeat 35
defaults write NSGlobalDomain KeyRepeat -1

fancy_echo_line "show hidden files"
defaults write com. apple.finder AppleShowAllFiles -bool true

fancy_echo_line "disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

###############################################################################
# Activity Monitor                                                            #
###############################################################################

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0