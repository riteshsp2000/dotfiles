#!/usr/bin/env bash

# Define colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print success message
print_success() {
  echo -e "${GREEN}$1${NC}"
}

# Function to print error message
print_error() {
  echo -e "${RED}$1${NC}"
}

# Install Xcode Command Line Tools if not already installed
if ! xcode-select -p &>/dev/null; then
  print_success "Installing Xcode Command Line Tools..."
  xcode-select --install
else
  print_success "Xcode Command Line Tools already installed."
fi

# Download and install Homebrew
if ! command -v brew &>/dev/null; then
  print_success "Downloading and installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  print_success "Homebrew is already installed."
fi

# Add Homebrew to the PATH in .zshrc or .bash_profile
shell_profile="$HOME/.bash_profile"

if ! grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' "$shell_profile"; then
  print_success "Adding Homebrew to your PATH..."
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$shell_profile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  print_success "Homebrew is already in your PATH."
fi

# Run Homebrew checks
print_success "Running Homebrew diagnostics..."
brew doctor
brew update
brew upgrade

# Check if Homebrew is installed properly
if brew --version &>/dev/null; then
  print_success "Homebrew installation was successful!"
  brew --version

  print_success "Installing formulae and casks..."
  source "~/.brew"
else
  print_error "Homebrew installation failed."
fi
