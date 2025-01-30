if [ -d /etc/nixos ]; then
	sudo rm /etc/nixos/configuration.nix
	sudo ln -s $HOME/dotfiles/config/conf.nix /etc/nixos/configuration.nix
fi

echo "Stowing files in home dir"
stow --dotfiles --dir ~/dotfiles --restow home

echo "Stowing files in config dir"
stow --dotfiles --dir ~/dotfiles --restow --target ~/.config config
