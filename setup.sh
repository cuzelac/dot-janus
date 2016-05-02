#!/bin/bash

set -e

# curl -SsL https://raw.githubusercontent.com/cuzelac/dot-janus/master/setup.sh | bash

function bg_run() {
  cmd=$1

  if [[ 1 == $DEBUG_JANUS_SETUP ]]
  then
    bash -c "${cmd}"
  else
    bash -c "${cmd} > /dev/null 2>&1 &"
  fi
}

INSTALL_DIR=~/.janus

git clone git@github.com:cuzelac/dot-janus.git $INSTALL_DIR

pushd $INSTALL_DIR

bg_run "git clone https://github.com/fatih/vim-go.git"
bg_run "git clone https://github.com/cuzelac/AutoTag.git"
bg_run "git clone https://github.com/tpope/vim-vividchalk.git"
bg_run "git clone https://github.com/rizzatti/funcoo.vim.git"
bg_run "git clone https://github.com/rizzatti/dash.vim.git"
bg_run "git clone https://github.com/garyharan/vim-proto.git"
bg_run "git clone https://github.com/gcmt/taboo.vim.git"
bg_run "git clone https://github.com/lukaszkorecki/CoffeeTags.git"
bg_run "git clone https://github.com/kchmck/vim-coffee-script.git"
bg_run "git clone https://github.com/bling/vim-airline.git"

bg_run "gem install CoffeeTags --no-rdoc --no-ri"

popd $INSTALL_DIR

wait
