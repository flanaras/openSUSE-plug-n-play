#!/bin/bash

vimrc=~/.vimrc

function addVimrc {
	line=$1
	grep -qFx "$line" $vimrc || echo "$line" >> $vimrc
}

function removeVimrc {
	line=$1
	sed -i "/$line/d" $vimrc
}

## .vimrc directives
addVimrc "set fileformat=unix"
addVimrc "set spell spelllang=en_gb"
addVimrc "set incsearch"
addVimrc "set hlsearch"
addVimrc "set nu"
addVimrc "set t_Co=256"
addVimrc "set ignorecase"
addVimrc "set smartcase"

## remove old directives
removeVimrc "set cindent"
