#!/bin/bash

# Startup
cd ~
mkdir Miscellaneous
cd Miscellaneous

# Install zsh and ohmyzsh
sudo apt install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing useful plugins
git clone git://github.com/wting/autojump.git
cd autojump
python3 install.py

# Pull the latest version of .zshrc
cd ~
curl -OL https://raw.githubusercontent.com/SiddarthVijay/SetupScripts/master/.zshrc

# Setup powerline10k
cd Miscellaneous
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ./powerlevel10k
echo 'source /home/siddarth/Miscellaneous/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Start zsh
cd ~
source .zshrc
