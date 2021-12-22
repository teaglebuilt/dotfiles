#!/usr/bin/env bash


if [[ $(uname -s) == "Darwin" ]]; then
 # /Library/Application Support/Code/User/settings.json
    if ! command -v brew >/dev/null; then
        code --install-extension PKief.material-icon-theme
        code --install-extension 4ops.terraform
    fi
fi


ln -sf settings.json $HOME/Library/Application\ Support/settings.json