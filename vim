#! /usr/bin/sh

# Vim
## Simple hack to get more vim extensions
sudo zypper in gvim

## Control P
mkdir ~/.vim
cd ~/.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
cd -
echo "set runtimepath^=~/.vim/bundle/ctrlp.vim" >> ~/.vimrc
