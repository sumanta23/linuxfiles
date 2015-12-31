#!/usr/bin/env bash

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


#install jedi-vim
#manually install "sudo pip install jedi"
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

#install NERDTree
cd ~/.vim/bundle/ && git clone https://github.com/scrooloose/nerdtree.git

#install CTRLP
cd ~/.vim/bundle && git clone https://github.com/ctrlpvim/ctrlp.vim.git

#install vim-fugitive
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-fugitive.git

#install syntastic
cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git

#install supertab
cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git

#install tabular
cd ~/.vim/bundle && git clone https://github.com/godlygeek/tabular.git

#install solarized
cd ~/.vim/bundle && git clone https://github.com/altercation/vim-colors-solarized.git

#install airline
cd ~/.vim/bundle && git clone https://github.com/bling/vim-airline.git

#install surround
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-surround.git

#install tagbar
cd ~/.vim/bundle && git clone https://github.com/majutsushi/tagbar.git


mkdir -p ~/.vimtemp/swaps ~/.vimtemp/backups ~/.vimtemp/undo

#install ctags
#sudo apt-get install ctags

echo "install https://github.com/Anthony25/gnome-terminal-colors-solarized.git manually"

