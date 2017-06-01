#!/bin/bash

readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
readonly VUNDLE_REPO="$SCRIPT_DIR/bundle/Vundle.vim"

# symlink this folder to .vim
if [ ! -d $HOME/.vim ]; then
  ln -s -b -f $SCRIPT_DIR $HOME/.vim
fi

# Bootstrap vundle install
if [ ! -d $VUNDLE_REPO ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_REPO
fi

# Vundle's install command is idempotent and works for updates as well
vim +PluginInstall +qall
