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

#install ctags
#sudo apt-get install ctags
