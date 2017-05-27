# Delegate to init script in my vim folder
./vim/init.sh

# zsh and tmux config only needs to be pointed to their respective dotfile in
# this repository
ln -s -b -f $(pwd)/zshrc $HOME/.zshrc
ln -s -b -f $(pwd)/tmux.conf $HOME/.tmux.conf
