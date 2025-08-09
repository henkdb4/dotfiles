#!/bin/env bash

if ! command -v flatpak; then
  echo "Flatpak not present, skipping..."
  exit 0;
fi

echo "Adding Repos to flatpak"
flatpak remote-add --if-not-exists --system flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Installing fatpak apps"
for pkg in $(<pkgs/flatpak); do
  flatpak install --system flathub $pkg
done
