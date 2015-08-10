#!/bin/bash

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp ./vimrc ~/.vimrc
cp ./gvimrc ~/.gvimrc

cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git 
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/terryma/vim-expand-region.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/scrooloose/syntastic.git
git clone --recursive https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
./install.sh --gocode-completer
cd
