#!/bin/bash

function addVimrc {
	LINE=$1
	grep -qFx "$LINE" ~/.vimrc || echo "$LINE" >> ~/.vimrc
}

## .vimrc directives
addVimrc "set fileformat=unix"
addVimrc "set spell spelllang=en_gb"
