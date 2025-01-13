if [ -d /etc/nixos ]; then
	sudo rm /etc/nixos/configuration.nix
	sudo ln -s $HOME/dotfiles/config/conf.nix /etc/nixos/configuration.nix
fi

echo "Stowing files"

stow --dir ~/dotfiles --restow home
