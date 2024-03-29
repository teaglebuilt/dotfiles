#!/usr/bin/env bash

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"


function ok() {
  echo -e $COL_GREEN[ok]$COL_RESET "$1"
}

function running() {
  echo -en "$COL_YELLOW => $COL_RESET"$1": "
}

function action() {
  echo -e "\n$COL_YELLOW[action]: $COL_RESET\n => $1..."
}

fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

fancy_echo_line() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt" "$@"
}
