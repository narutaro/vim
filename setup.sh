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

# Nerdtree
git clone https://github.com/scrooloose/nerdtree.git

# Lightline
git clone https://github.com/itchyny/lightline.vim.git
echo "set laststatus=2" >> ~/.vimrc

# indentLine
git clone https://github.com/Yggdroot/indentLine.git

# molokai
cd ~/.vim && \
git clone https://github.com/fatih/molokai.git
cp -r ~/.vim/molokai/colors .
echo "colorscheme molokai" >> ~/.vimrc

