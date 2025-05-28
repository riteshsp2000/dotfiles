#!/usr/bin/env bash

# Create a new directory and enter it
function mkd() {
	mkdir -p "$1" && cd "$2";
}

# Delete a directory
function rmd() {
  rm -rf "$1";
}

function mkf() {
  mkdir -p "$(dirname "$1")" && touch "$1" ;
}
