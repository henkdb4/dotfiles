#!/bin/env bash

# Installing ZVM
curl https://raw.githubusercontent.com/tristanisham/zvm/master/install.sh | bash

# Adding zvm to path
PATH="$PATH:$HOME/.zvm/self:$HOME/.zvm/bin"

# Installing latest stable
zvm i 0.13.0
