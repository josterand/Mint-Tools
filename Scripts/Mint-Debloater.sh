#!bin/bash

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
logString="[DEBLOATER-LOG $(date "+%Y-%m-%d %H:%M:%S")] "

# Package list
bloatPackages="
redshift
transmission-gtk
hexchat
baobab
seahorse
thunderbird
rhythmbox
simple-scan
drawing
gnote
xreader
onboard
gnome-calendar
celluloid
gnome-logs
gnome-power-manager
warpinator
libreoffice-core
libreoffice-common
"

# Upgrading and Cleaning
echo -e $bold$green$logString"Upgrading Packages..."$reset
sleep 1
echo -e $bold$green$logString"Checking For Sudo Password..."$reset
sleep 3

sudo apt update
sudo apt upgrade -y
echo -e $bold$green$logString"Cleaning Packages..."$reset
sleep 3
sudo apt autoremove -y
sudo apt clean

# Start Debloating
echo -e $bold$green$logString"Debloating. Please Don't Perform Any Other Actions..."$reset
sleep 3
sudo apt purge --autoremove $bloatPackages -y
echo -e $bold$green$logString"Cleaning..."$reset
sleep 3
sudo apt autoremove -y
sudo apt clean
echo -e $bold$green$logString"Debloating Completed! Your System Is Now Clean!"$reset
sleep 5
