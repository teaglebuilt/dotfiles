
# How to revert settings for key speed
# defaults delete NSGlobalDomain InitialKeyRepeat
# defaults delete NSGlobalDomain KeyRepeat
defaults write NSGlobalDomain InitialKeyRepeat 10
defaults write NSGlobalDomain KeyRepeat 1
