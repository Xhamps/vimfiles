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
    echo "=> Need install Node.js to install JsBeautify"
fi


if has "npm"; then
    npm install -g typescript
else
    echo "=> Need install Node.js to install command-line TypeScript"
fi


vim +PluginInstall +qall

echo -e "\n\n\n=> Build vimproc\n"
echo "========================================================="
cd bundle/vimproc.vim/ && make && cd ../../
echo "========================================================="

echo -e "\n\n\n=> Build YouCompleteMe\n"
echo "========================================================="
if has "brew"; then
    brew install cmake
    cd bundle/YouCompleteMe && ./install.py --tern-completer --gocode-completer && cd ../../
else
    echo "=> Need install brew to install the CMake to compile YouCompleteMe"
fi
echo "========================================================="
