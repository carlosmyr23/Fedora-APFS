#!/bin/bash
# ref: https://github.com/sgan81/apfs-fuse
sudo dnf upgrade 
sudo dnf install zlib bzip2 libattr cmake gcc-c++ git fuse3-devel
sudo dnf upgrade
git clone https://github.com/sgan81/apfs-fuse.git
cd apfs-fuse
git submodule init
git submodule update
mkdir build
cd build
cmake ..
make
# Then follow the instructions in https://github.com/sgan81/apfs-fuse
