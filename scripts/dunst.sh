#!/bin/bash

sudo apt-get install libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev

cd /opt

git clone https://github.com/dunst-project/dunst.git
cd dunst
make
sudo make install