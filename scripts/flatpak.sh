#!/bin/env bash

if ! command -v flatpak; then
  echo "Flatpak not present, skipping..."
  exit 0;
fi

pkgs="com.discordapp.Discord
  com.spotify.Client
  md.obsidian.Obsidian"

echo "Adding Repos to flatpak"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Installing fatpak apps"
for pkg in $pkgs; do
  flatpak install --user $pkg
done
