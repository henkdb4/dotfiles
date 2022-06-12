#!/bin/bash

# This file installs some programs

# Rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Tools
sudo apt install git vim alacritty fonts-firacode

# Cargo deps
sudo apt install libssl-dev

# Cargo tools
cargo install starship topgrade cargo-update
