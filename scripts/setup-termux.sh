#!/usr/bin/env bash

# stop when not in termux
if [ -z $TERMUX_VERSION ]; then
  exit -1;
fi

pkgs="$(<pkgs/termux) $(<pkgs/default) $(<pkgs/shell)"

pkg i topgrade which openssh neovim elvish zig ranger wget man jq htop $pkgs
