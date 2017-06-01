#!/bin/bash

# Delegate to init script in my vim folder
./vim/init.sh

# zsh and tmux config only needs to be pointed to their respective dotfile in
# this repository
readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Both if statements check to make sure we haven't already made symlinks to the
# dotfiles in this repository
if [ ! -L $HOME/.zshrc ] || [ "$(readlink $HOME/.zshrc)" != "$SCRIPT_DIR/zshrc" ]; then
  ln -s -b -f $(pwd)/zshrc $HOME/.zshrc
fi

if [ ! -L $HOME/.tmux.conf ] || [ "$(readlink $HOME/.tmux.conf)" != "$SCRIPT_DIR/tmux.conf" ]; then
  ln -s -b -f $(pwd)/tmux.conf $HOME/.tmux.conf
fi
