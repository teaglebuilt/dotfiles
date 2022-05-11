#!/usr/bin/env bash    

set -e

ROOT=$(pwd)

find $ROOT/bin/ -type f -iname "*.sh" -exec chmod +x {} \;

source $ROOT/scripts/helpers.sh

load_shell() {
    action "load shell"
    source $HOME/.zshrc
}

link_dotfiles() {
    if [ -d $HOME/.config ]; then
        fancy_echo ".config already present...deleting"
    else
        for f in $ROOT/config/*; do
            if [ "$f" == "vscode"]; then 
                echo $f
            fi
        done
        action "setup XDG_CONFIG_HOME"
        ln -s $ROOT/config $HOME/.config
    fi

    shopt -s dotglob
    for f in $ROOT/dots/*; do
        filename="${f##*/}"
        if [ -d "$f" ]; then
            echo "$f"\n
        else
            ln -s -f $f $HOME/$filename
            ok "symlink created for $HOME/$filename"
        fi
    done
}


prereq() {
    if ! command -v brew >/dev/null; then
        fancy_echo "Installing Homebrew ..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        fancy_echo "Homebrew already installed..."
    fi

    if ! command -v ansible-playbook >/dev/null; then
        fancy_echo "Installing ansible..."
        brew install ansible
    else
        fancy_echo "ansible already installed..."
    fi
}

bootstrap_macos() {
    prereq
    ansible-playbook -i hosts main.yaml
    link_dotfiles
    load_shell
}

case $(uname -s) in 
    "Darwin")
        action "setting up dotfiles for macos"
        bootstrap_macos ;;
    *)
        echo "OS is not registered with dotfiles" ;;
esac

