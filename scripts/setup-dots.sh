#!/usr/bin/env bash

if [ -d /etc/nixos ]; then
	sudo rm /etc/nixos/configuration.nix
	sudo ln -s $HOME/dotfiles/config/conf.nix /etc/nixos/configuration.nix
fi

if ! command -v stow; then
  echo "stow not present, skipping..."
  exit -1;
fi

Result=0

echo "Stowing files in home dir"
stow --dotfiles --dir ~/dotfiles --restow --no-folding home
Result=$(($Result+$?))

if [ ! -d ~/.config ]; then
  echo "Creating .config folder"
  mkdir ~/.config
fi

echo "Stowing files in config dir"
stow --dotfiles --dir ~/dotfiles --restow --no-folding --target ~/.config config
Result=$(($Result+$?))

exit $Result
