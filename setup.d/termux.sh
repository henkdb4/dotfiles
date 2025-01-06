#!/bin/bash

# stop when not in termux
if [ -z $TERMUX_VERSION ]; then
  exit 0;
fi

pkg i topgrade starship neofetch which git openssh neovim elvish zig ncdu fdupes ranger stow wget man figlet
