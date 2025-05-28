#!/usr/bin/env bash

ensure_dir_and_stow () {
    mkdir -p "$1"
    stow --target="$1" "$2"
}

ensure_dir_and_stow "$HOME/.config/zsh/" zsh
ln -sf ~/.config/zsh/.zshrc ~/.zshrc
ensure_dir_and_stow "$HOME/.config/brew/" brew
ensure_dir_and_stow "$HOME/.config/ghostty/" ghostty
ensure_dir_and_stow "$HOME/.config/starship/" starship
ensure_dir_and_stow "$HOME/.config/zed/" zed