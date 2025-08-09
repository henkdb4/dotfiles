#!/usr/bin/env bash

# stop when in termux, go has issues with networking so i'm installing it with apt
if [ -n $TERMUX_VERSION ]; then
      exit -1;
fi

# Installing ZVM
curl https://raw.githubusercontent.com/tristanisham/zvm/master/install.sh | bash

# Adding zvm to path
PATH="$PATH:$HOME/.zvm/self:$HOME/.zvm/bin"

# Installing latest stable
zvm i 0.13.0
