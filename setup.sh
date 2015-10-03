#!/bin/bash

mkdir ~/.janus
cd ~/.janus
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/cuzelac/AutoTag.git
git clone https://github.com/cuzelac/vim-vividchalk.git vividchalk
git clone https://github.com/rizzatti/funcoo.vim.git
git clone https://github.com/rizzatti/dash.vim.git
git clone https://github.com/garyharan/vim-proto.git
git clone https://github.com/gcmt/taboo.vim.git
git clone https://github.com/lukaszkorecki/CoffeeTags.git
git clone https://github.com/kchmck/vim-coffee-script.git
git clone https://github.com/bling/vim-airline.git

gem install CoffeeTags --no-rdoc --no-ri
