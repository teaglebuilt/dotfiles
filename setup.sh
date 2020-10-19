#!/usr/bin/env bash

ROOT="$(pwd)"

set -e

cd $HOME

if [[ $(uname -s) == "Darwin" ]]; then
     exec $ROOT/scripts/install-osx.sh
elif [[ $(uname -s) == "Linux" ]]; then
    exec $ROOT/scripts/install-linux.sh
fi