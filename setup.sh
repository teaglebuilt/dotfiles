#!/usr/bin/env bash    

set -e

ROOT=$(pwd)

find $ROOT/scripts/ -type f -iname "*.sh" -exec chmod +x {} \;

source $ROOT/scripts/helpers.sh


case $(uname -s) in 
    "Darwin")
        action "setting up dotfiles for macos"
        exec $ROOT/scripts/os/osx/install.sh ;;
    *)
        echo "OS is not registered with dotfiles" ;;
esac

