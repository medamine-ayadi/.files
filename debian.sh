#!/usr/bin/env bash

PKGS=(
	'neovim'
	'git'
	'sway'
	'wofi'
	'foot'
	'i3status'
	'mpv'
	'fzf'
	'bash-completion'
	'pipewire'
	'wireplumber'
	'pipewire-audio'
	'grim'
	'swappy'
	'slurp'
	'brightnessctl'
	'imv'
	'stow'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG" -y
done

# == Stow all dirs ==
# stow */
CONFIGS=(
	'foot'
	'i3status'
	'sway'
	'wofi'
	'nvim'
)
for CONFIG in "${CONFIGS[@]}"; do
    echo "STOWING: ${CONFIG}"
    stow "$CONFIG"
done
