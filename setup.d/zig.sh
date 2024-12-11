#!/bin/env bash

# stop when in termux, issues with binary linking in the formatter
if [ -n $TERMUX_VERSION ]; then
  exit 0;
fi
`
# Installing ZVM
curl https://raw.githubusercontent.com/tristanisham/zvm/master/install.sh | bash

# Adding zvm to path
PATH="$PATH:$HOME/.zvm/self:$HOME/.zvm/bin"

# Installing latest stable
zvm i 0.13.0
