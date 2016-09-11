#!/bin/bash

has() {
  type "$1" > /dev/null 2>&1
}

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/.vim/vimrc ~/.vimrc

if has "brew"; then
    brew install ag
else
    echo "=> Need install brew to install the Ag"
fi

if has "npm"; then
    npm -g install js-beautify
else
    echo "=> Need isntall Node.js to install JsBeautify"
fi

vim +PluginInstall +qall
