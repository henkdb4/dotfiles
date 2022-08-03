#!/bin/bash

# This file installs some programs. It currently only supports Pop!_OS.

# Rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Tools
sudo apt install git vim alacritty fonts-firacode fonts-hack

# Cargo deps
sudo apt install libssl-dev

# Cargo tools
cargo install starship topgrade cargo-update

# Load submodules
git submodule init
