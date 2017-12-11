#!/bin/bash

function addVimrc {
	LINE=$1
	grep -qFx "$LINE" ~/.vimrc || echo "$LINE" >> ~/.vimrc
}

## .vimrc directives
addVimrc "set fileformat=unix"
addVimrc "set spell spelllang=en_gb"
addVimrc "set incsearch"
addVimrc "set hlsearch"
addVimrc "set cindent"
addVimrc "set nu"
