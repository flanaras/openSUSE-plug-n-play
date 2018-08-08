#!/bin/bash

function cleanLines {
	sed -i "s/removeMe//" ~/.gitconfig
}

function addAlias {
	grep -qF "$1" ~/.gitconfig || sed -i "/\[alias\]/aremoveMe	$1" ~/.gitconfig
}

## Add gitconfig aliases
addAlias "network = log --all --graph --decorate --oneline"
addAlias "fa = fetch --all"
addAlias "cm = commit -m"
addAlias "s = status"
addAlias "aa = add ."
addAlias "ai = add -i"
addAlias "co = checkout"

cleanLines
