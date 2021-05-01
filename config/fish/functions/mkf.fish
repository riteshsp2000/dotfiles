#!/usr/bin/env bash

# Make a file
function mkf() { 
  mkdir -p "$(dirname "$1")" && touch "$1" ;  
}