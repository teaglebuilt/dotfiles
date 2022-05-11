#!/usr/bin/env bash

EXTENSIONS="./extensions.txt"
while read EXTENSIONS
do
    fancy_echo "Install VSCode Extension: $EXTENSION"
    code --install-extension $EXTENSION
done < $HOME/.config/vscode/extensions.txt

