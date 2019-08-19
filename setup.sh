#!/bin/bash

has() {
  type "$1" > /dev/null 2>&1
}

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc

if has "brew"; then
  brew tap homebrew/cask-fonts
  brew cask install font-hack-nerd-font
  brew install vim
  brew install ag
else
  echo "=> Need install brew to install the Ag"
fi

if has "npm"; then
  npm -g install js-beautify
else
  echo "=> Need install Node.js to install JsBeautify"
fi

vim +PlugInstall

