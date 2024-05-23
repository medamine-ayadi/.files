#!/usr/bin/env bash

wget https://github.com/Alex313031/Mercury/releases/download/v.123.0.1/mercury-browser_123.0.1_SSE4.deb -P /tmp/
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
    '/tmp/mercury-browser_123.0.1_SSE4.deb'
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
