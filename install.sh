#!/usr/bin/env bash

# Vim
mkdir $HOME/.vim
ln -s $(pwd)/vimrc $HOME/.vim/vimrc

# Git
ln -s $(pwd)/gitignore $HOME/.gitignore
git config --global core.excludesFile $HOME/.gitignore
