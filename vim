#!/bin/bash

cd vim-rest

# Vim
# Install
## if parameter is set
if [ "$1" = "install" ] || [ "$1" = "in" ]; then
	sudo zypper in ./vim-dependencies
fi

#* Configurations
## Control P
./vim-ctrlp

cd -
