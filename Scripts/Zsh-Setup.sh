#!/bin/bash

# -----------------------------------------------------------------------------
# MIT License
# 
# Copyright (c) 2024 Jonathan Steve Roland
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# -----------------------------------------------------------------------------

# Text Formatting
bold="\033[1m"
reset="\033[0m"
green="\033[32m"
red="\033[31m"

# Log Message String
logString="[ZSH-SETUP-LOG $(date "+%Y-%m-%d %H:%M:%S")] "

# Upgrading Packages
echo -e $bold$green$logString"Upgrading Packages..."$reset
sleep 3
sudo apt update
sudo apt upgrade -y

# Install Zsh
echo -e $bold$green$logString"Installing Zsh..."$reset
sleep 3
sudo apt install zsh

# Install Git
echo -e $bold$green$logString"Installing Git..."$reset
sleep 3
sudo apt install git

# Installing Other Stuffs
echo -e $bold$green$logString"Creating ZSH Folder in $HOME..."$reset
sleep 3
mkdir $HOME/.zsh
mkdir $HOME/.zsh/themes
mkdir $HOME/.zsh/plugins

# Installing Theme
echo -e $bold$green$logString"Installing Theme..."$reset
sleep 3
mv ../Assets/zsh/ $HOME/.zsh/themes

# Installing Plugins
cd $HOME/.zsh/plugins
echo -e $bold$green$logString"Installing Plugins..."$reset
sleep 3
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git
git clone --depth 1 https://github.com/MichaelAquilina/zsh-you-should-use.git
cd $HOME
echo -e $bold$green$logString"Zsh Installation Completed!"$reset
