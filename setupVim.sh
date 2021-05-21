#!/usr/bin/env bash

# dotfiles directory
homedir=~
dotfiledir=${homedir}/dotfiles

directories='fish nvim'

for directory in ${directories}; do
  echo "Creating $directory"
  rm -rf ${homedir}/.config/${directory}
  cp -R ${dotfiledir}/.config/${directory} ${homedir}/.config/${directory}
done