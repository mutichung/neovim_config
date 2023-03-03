#!/bin/bash
set -e

# Download neovim from github
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install nvim-linux64.deb
rm -rf nvim-linux64.deb

# Set vi command to nvim
if [ ! -f $HOME/.bash_aliases ]; then
    touch $HOME/.bash_aliases
fi
echo 'alias vi="nvim"' >> $HOME/.bash_aliases

# Clone init.vim from gist
mkdir -p $HOME/.config/nvim/
git clone <LINK> $HOME/.config/nvim/

# Download Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

