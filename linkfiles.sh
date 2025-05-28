#!/usr/bin/env bash

# 3. Use GNU Stow to symlink dotfiles
echo "🔗 Symlinking dotfiles using stow..."
stow --target"$HOME" zsh
stow --target"$HOME/.config/ghostty" ghostty
stow --target"$HOME/.config/starship" starship