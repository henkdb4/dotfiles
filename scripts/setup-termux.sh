#!/bin/bash

# stop when not in termux
if [ -z $TERMUX_VERSION ]; then
  exit 0;
fi

pkgs="$(<pkgs/termux) $(<pkgs/default) $(<pkgs/shell)"

pkg i topgrade which openssh neovim elvish zig ranger wget man jq htop $pkgs
