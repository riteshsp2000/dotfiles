#!/usr/bin/env bash

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Using a modern brew instead of the inbuilt one.
# Also, this changes default shell from zsh to bash
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install gmp
brew install neovim
brew install docker

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install gs
brew install imagemagick --with-webp
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# dev binaries
brew install node
brew install yarn
brew install pnpm
brew install lua
brew install openjdk
brew install jenv
brew install git
brew install git-lfs

# Devtools
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask mongodb-compass
brew install --cask react-native-debugger
brew install --cask jetbrains-toolbox
brew install --cask intellij-idea-ce
brew install --cask postman

# Install MacOS Applications
brew install --cask google-chrome
brew install --cask ytmdesktop-youtube-music
brew install --cask slack
brew install --cask whatsapp
brew install --cask vlc
brew install --cask cleanmymac
brew install --cask ticktick
brew install --cask notion
brew install --cask notion-calendar
brew install --cask logi-options-plus

# Install MacOS Utilities
brew install --cask the-unarchiver
brew install --cask duet
brew install --cask helium
brew install --cask alfred
brew install --cask raycast
brew install --cask macs-fan-control
brew install --cask vanilla
brew install --cask handbrake
brew install --cask cloudflare-warp
brew install --cask rectangle

# Remove outdated versions from the cellar.
brew cleanup