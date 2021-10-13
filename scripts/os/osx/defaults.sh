#!/usr/bin/env bash

gread() {
  defaults read NSGlobalDomain ${@}
}

gwrite() {
  defaults write NSGlobalDomain ${@}
}


echo "backspace speed"
gwrite InitialKeyRepeat 35
gwrite KeyRepeat -1

