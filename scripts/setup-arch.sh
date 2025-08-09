#/usr/bin/env bash

if ! [ -f "/etc/arch-release" ]; then
  echo "Not running Arch, skipping..."
  exit -1
fi

PackageList="neovim luarocks man $(<pkgs/default) $(<pkgs/shell) $(<pkgs/wm) $(<pkgs/apps)"

for pkg in $PackageList 
do
  if [[ -z $(yay -Q $pkg) ]]
  then 
    echo "Installing $pkg..."
    yay -Sy --noconfirm $pkg
  fi
done
