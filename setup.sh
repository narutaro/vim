#!/bin/sh
rm -fr ~/.vim
rm ~/.vimrc

# Just in case - debian
sudo apt-get install vim-gui-common -y
sudo apt-get install vim-runtime -y
sudo apt-get install curl -y

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo '" Pathogen' >> ~/.vimrc
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
#echo 'filetype plugin indent on' >> ~/.vimrc

# Install Plugins
cd ~/.vim/bundle

# Nerdtree
git clone https://github.com/scrooloose/nerdtree.git
echo '" NerdTree' >> ~/.vimrc
echo 'nnoremap <silent><C-n> :NERDTreeToggle<CR>' >> ~/.vimrc

# Lightline
git clone https://github.com/itchyny/lightline.vim.git
echo '" Lightline' >> ~/.vimrc
echo 'set laststatus=2' >> ~/.vimrc

# Other
echo 'set tabstop=2' >> ~/.vimrc
echo 'set number' >> ~/.vimrc

# indentLine
# echo '" indentLine' >> ~/.vimrc
# git clone https://github.com/Yggdroot/indentLine.git
# ln -s ~/.vim/bundle/indentLine/after/plugin/indentLine.vim ~/.vim/bundle/indentLine.vim

# Color schemes
cd ~/.vim && \
git clone https://github.com/flazz/vim-colorschemes.git
ln -s ~/.vim/vim-colorschemes/colors ./colors && \
color_schemes=`ls ~/.vim/colors`
for cs in $color_schemes; do
  echo "\"colorscheme $cs" | sed -e s/\.vim// >> ~/.vimrc
done
echo "Please uncomment colorscheme you want to use in .vimrc"
