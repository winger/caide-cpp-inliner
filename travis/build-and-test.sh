#!/bin/sh
set -ev

export CXX=g++-4.9
export CC=gcc-4.9

git submodule update --init src/clang

mkdir build
cd build
cmake -DCAIDE_USE_SYSTEM_CLANG=ON ../src
make -j2 cmd test-tool
ctest

