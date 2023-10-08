#!/usr/bin/env bash

PKGS=(
    'nnn'
    'neovim'
    'gh'
)
# Keys
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Motion & Colors
defaults write com.apple.Accessibility DifferentiateWithoutColor -int 1
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    brew install "$PKG"
done

cp -r zsh/.zshrc ~/.zshrc
cp -r nvim ~/.config/. 
