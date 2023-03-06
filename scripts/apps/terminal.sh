#!/usr/bin/env bash


ALACRITTY_DIR="$(pwd)/apps/alacritty"
ALACRITTY_APP_DIR="/Applications/Alacritty.app"

if [ ! -d "$ALACRITTY_DIR" ]; then
    git clone https://github.com/alacritty/alacritty.git "$ALACRITTY_DIR"
fi

cd "$ALACRITTY_DIR"

if [[ $(uname -s) == "Darwin" ]]; then
    if [ ! -d "$ALACRITTY_APP_DIR" ]; then
        make app
        cp -r target/release/osx/Alacritty.app "$ALACRITTY_APP_DIR"
    fi
elif [[ $(uname -s) == "Linux" ]]; then
    cargo build --release
fi
