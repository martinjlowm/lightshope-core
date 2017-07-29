#!/bin/bash
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update -qq
sudo apt-get install -qq g++-6
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 90

g++   --version
g++-6 --version

# TBB
sudo apt-get install -y libtbb-dev
export TBB_ROOT_DIR=/usr/include/tbb/

sudo apt-get install -qq libace-dev
export ACE_ROOT=/usr/include/ace/
