#!/bin/bash
#
# sudo apt update & sudo apt upgrade
# sudo apt install -y cmake automake libtool libtool-bin

WORK_DIR=`pwd`

if [ ! -d $HOME/.config ]; then
    ln -s $WORK_DIR/.config $HOME/.config
fi

# neovim
which nvim
if [ $? -eq 1 ]; then
    #sudo apt install neovim
    cd /usr/local/src
    sudo git clone https://github.com/neovim/neovim.git
    cd neovim
    sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
fi

# tmux
which tmux
if [ $? -eq 1 ]; then
    sudo apt install tmux
fi
if [ ! -f $HOME/.tmux.conf ]; then
    ln -s $WORK_DIR/.tmux.conf $HOME/.tmux.conf
fi

