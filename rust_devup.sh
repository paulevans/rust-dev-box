#!/bin/bash

echo "Installing rust from source..."

mkdir -p ~/github/rust-lang/
cd ~/github/rust-lang
git clone https://github.com/rust-lang/rust.git
cd ~/github/rust-lang/rust 
git checkout stable 
./configure
make && sudo make install
