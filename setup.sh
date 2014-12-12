#!/bin/sh

# Just in case - debian
sudo apt-get install vim-gui-common -y
sudo apt-get install vim-runtime -y

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo '" Pathogen' 
echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc

# Install Plugins
cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/itchyny/lightline.vim.git
git clone https://github.com/Yggdroot/indentLine.git
#git clone https://github.com/tomasr/molokai.git
git clone https://github.com/fatih/molokai.git
