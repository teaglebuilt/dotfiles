#!/usr/bin/env bash

ROOT="$(pwd)"
# rbenv install 2.5.0
# rbenv global 2.5.0
# rbenv rehash

set -e


if [[ $(uname -s) == "Darwin" ]]; then
     exec $ROOT/scripts/install-osx.sh
elif [[ $(uname -s) == "Linux" ]]; then
    "$ROOT/scripts/install-linux.sh"
fi