#! /bin/bash

apt remove tmux -y
apt install build-essential libevent-dev ncurses-dev -y

pushd /tmp/

wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
tar -xzf tmux-2.6.tar.gz
cd tmux-2.6
./configure && make
make install

popd
