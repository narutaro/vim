#!/bin/sh
mv ~/.vim ~/.vim.back
mv ~/.vimrc ~/.vimrc.back

# Just in case - debian
sudo apt-get install vim-gui-common -y
sudo apt-get install vim-runtime -y

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo '" Pathogen' 
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'filetype plugin indent on' >> ~/.vimrc

# Install Plugins
cd ~/.vim/bundle && \

# Nerdtree
git clone https://github.com/scrooloose/nerdtree.git
echo '" NerdTree' >> ~/.vimrc
echo 'nnoremap <silent><C-n> :NERDTreeToggle<CR>' >> ~/.vimrc

# Lightline
git clone https://github.com/itchyny/lightline.vim.git
echo '" Lightline' >> ~/.vimrc
echo 'set laststatus=2' >> ~/.vimrc

# indentLine
git clone https://github.com/Yggdroot/indentLine.git
ln -s ~/.vim/bundle/indentLine/after/plugin/indentLine.vim ~/.vim/bundle/indentLine.vim

# molokai
cd ~/.vim && \
git clone https://github.com/fatih/molokai.git
#cp -r ~/.vim/molokai/colors .
ln -s ~/.vim/molokai/colors ./colors
echo '" Molokai' >> ~/.vimrc
echo 'colorscheme molokai' >> ~/.vimrc
