#!/bin/bash
set -ev

export CXX=g++-4.9
export CC=gcc-4.9

git submodule init
git submodule update src/clang
if [ "$CAIDE_LLVM_VER" = "GIT" ]
then
    git submodule update src/llvm
    CAIDE_SYSTEM_CLANG=OFF
else
    CAIDE_SYSTEM_CLANG=ON
fi

mkdir build
cd build
cmake -DCAIDE_USE_SYSTEM_CLANG=$CAIDE_SYSTEM_CLANG ../src
make -j2 cmd test-tool
ctest

