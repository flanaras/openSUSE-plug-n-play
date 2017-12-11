#!/bin/bash

# Vim
#* Install
## if parameter is set
if [ "$1" = "install" ] || [ "$1" = "in" ]; then
	./vim-dependencies
fi

#* Configurations
## Control P
./vim-ctrlp

## Add vimrc directives
./vimrc
