#!/usr/bin/env bash

if command -v starship; then
  echo "Starhip installed, skipping..."
  exit 0;
fi

if ! [ -z $TERMUX_VERSION ]; then
  echo "Running termux, installing via pkg"
  pkg i starship
  exit 0;
fi

echo "Installing starship via remote installer..."
curl -sS https://starship.rs/install.sh | sh
