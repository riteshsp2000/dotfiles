#!/usr/bin/env bash

set -e

echo "🔧 Bootstrapping dotfiles setup..."

# 1. Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Install everything from the Brewfile
echo "📦 Installing packages from Brewfile..."
brew bundle --file="./brew/Brewfile" 

# 3. Use GNU Stow to symlink dotfiles
echo "🔗 Symlinking dotfiles using stow..."
./linkfiles.sh

# 4. Source .zshrc
echo "🔁 Sourcing .zshrc..."
source ~/.zshrc

echo "✅ Dotfiles setup complete!"