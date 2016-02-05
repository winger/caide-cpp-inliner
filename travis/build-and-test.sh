#!/bin/sh
set -ev

export CXX=g++-4.8
export CC=gcc-4.8

git submodule init
git submodule update src/clang src/llvm

mkdir build
cd build
cmake -DCAIDE_USE_SYSTEM_CLANG=OFF ../src
make -j2 cmd test-tool
ctest

