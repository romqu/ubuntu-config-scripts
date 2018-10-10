#!/bin/bash

cd /opt
sudo git clone git://github.com/vivien/i3blocks i3-blocks
sudo chown -R roman:roman i3-blocks
cd i3-blocks
make clean debug # or make clean all
make install
