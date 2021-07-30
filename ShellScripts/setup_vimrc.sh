#!/bin/bash

# Install vim plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Get .vimrc
curl -fLo ~/.vimrc https://raw.githubusercontent.com/byarmis/Utilities/master/vimrc
