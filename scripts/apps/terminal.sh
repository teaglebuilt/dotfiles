#!/usr/bin/env bash


if [ ! -d "$(pwd)/apps/alacritty" ]; then
    git clone https://github.com/alacritty/alacritty.git $(pwd)/apps/alacritty
fi

cd $(pwd)/apps/alacritty


if [[ $(uname -s) == "Darwin" || ! -d "/Applications/Alacritty.app"]]; then
    make app
    cp -r target/release/osx/Alacritty.app /Applications/
elif [[ $(uname -s) == "Linux" ]]; then
    cargo build --release
fi