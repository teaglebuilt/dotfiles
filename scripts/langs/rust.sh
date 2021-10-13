#!/usr/bin/env bash

installer() {
    curl https://sh.rustup.rs -sSf | sh -s -- -y

    rustup override set stable
    rustup update stable
}
