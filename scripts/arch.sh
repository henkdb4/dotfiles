#/bin/env bash

if ! [ -f "/etc/arch-release" ]; then
  echo "Not running Arch, skipping..."
  exit 0
fi

PackageList="neovim luarocks man $(<pkgs/default) $(<pkgs/shell) $(<pkgs/wm) $(<pkgs/apps)"

yay -Sy --noconfirm # I sometimes have problems with an outdated database

for pkg in $PackageList 
do
  if [[ -z $(yay -Q $pkg) ]]
  then 
    echo "Installing $pkg..."
    yay -S --noconfirm $pkg
  fi
done
