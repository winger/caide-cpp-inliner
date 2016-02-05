#!/bin/sh
set -ev

mkdir build
cd build
cmake -DCAIDE_USE_SYSTEM_CLANG=ON ../src
make -j2 cmd test-tool
ctest

