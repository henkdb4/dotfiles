#!/bin/env bash

if [ -f "/etc/debian-version" ]; then
  echo "Not running Debian based os, skipping..."
  exit 0
fi

PKGS="build-essential $(<pkgs/default)"
BREW_PKGS="$(<pkgs/shell)"

echo "Installing apt packages"
sudo apt install -y $PKGS

if ! command -v flatpak; then
    echo "Installing brew as not all packages are available in the repos"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install $BREW_PKGS
