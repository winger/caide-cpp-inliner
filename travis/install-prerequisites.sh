#!/bin/sh
set -ev

#sudo -E add-apt-repository -y ppa:ubuntu-toolchain-r/test
#sudo -E apt-add-repository -y "deb http://llvm.org/apt/precise/ llvm-toolchain-precise main"
#sudo -E apt-get -yq update
#sudo -E apt-get -yq --no-install-suggests --no-install-recommends --force-yes install \
#    gcc-4.8 g++-4.8 llvm-3.7-dev libclang-3.7-dev
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 90
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 90

