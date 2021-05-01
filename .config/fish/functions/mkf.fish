#!/usr/bin/env bash


# Create a new file
function mkf 
	mkdir -p "$(dirname "$1")" && touch "$1" 
end