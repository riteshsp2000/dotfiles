#!/usr/bin/env bash

set -e

echo "🔧 Bootstrapping dotfiles setup..."

# 1. Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Install everything from the Brewfile
echo "📦 Installing packages from Brewfile..."
brew bundle --file="$HOME/.config/brew/Brewfile" 

# 3. Use GNU Stow to symlink dotfiles
echo "🔗 Symlinking dotfiles using stow..."
chmod +x ./linkfiles.sh
./linkfiles.sh

# 4. Source .zshrc
echo "🔁 Sourcing .zshrc..."
source ~/.zshrc

echo "✅ Dotfiles setup complete!"