#!/bin/bash
echo "-----------------------------------------------------"
echo "Options available via defining enviornment variables:"
echo "USE_RUST_SOURCE    Clones and builds rust from github"
echo " (unset)           Uses rustup setup script"
echo "-----------------------------------------------------"

if [ -z "$USE_RUST_SOURCE" ]
then
    echo "Installing using rustup..."
    sudo curl https://sh.rustup.rs -sSf | sh -s -- -y
else 
    echo "Installing rust from source..."
    mkdir -p ~/github/rust-lang/
    cd ~/github/rust-lang
    git clone https://github.com/rust-lang/rust.git
    cd ~/github/rust-lang/rust 
    # git checkout stable 
    ./configure
    make && sudo make install
fi
