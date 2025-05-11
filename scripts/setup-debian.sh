#!/bin/env bash

if ! [ -f /etc/debian-version ]; then
  echo "Not running Debian based os, skipping..."
  exit 0
fi

pkgs="build-essential $(<pkgs/default)"
brew_pkgs="$(<pkgs/shell)"

echo "Installing apt packages"
for pkg in $pkgs
do
    if ! dpkg --status $pkg &> /dev/null
    then
	sudo apt install $pkg
    fi
done

if ! command -v brew; then
    echo "Installing brew as not all packages are available in the repos"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing brew packages"
for pkg in $brew_pkgs
do
    if ! brew list $pkg &> /dev/null
    then
        brew install $BREW_PKGS
    fi
done
