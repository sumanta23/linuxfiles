#!/usr/bin/env bash

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


#install jedi-vim
#manually install "sudo pip install jedi"
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git

#install NERDTree
cd ~/.vim/bundle/ && git clone https://github.com/scrooloose/nerdtree.git

#install CTRLP
cd ~/.vim/ && git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

#install vim-nodejs
# :filetype plugin on
cd ~/.vim/ && wget -O master.zip https://codeload.github.com/myhere/vim-nodejs-complete/legacy.zip/master
unzip master.zip

#install syntastic
cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git

#install supertab
cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git

#install tabular
cd ~/.vim/bundle && git clone https://github.com/godlygeek/tabular.git

#install solarized
cd ~/.vim/bundle && git clone https://github.com/altercation/vim-colors-solarized.git

#install airline
cd ~/.vim/bundle && git clone https://github.com:bling/vim-airline.git

mkdir .vimtemp/swaps .vimtemp/backups .vimtemp/undo

#install ctags
#sudo apt-get install ctags

echo "install https://github.com/Anthony25/gnome-terminal-colors-solarized.git manually"

