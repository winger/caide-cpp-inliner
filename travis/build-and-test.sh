#!/bin/sh
set -ev

g++ --version
gcc --version
cmake --version
python --version

mkdir build
cd build
cmake -DCAIDE_USE_SYSTEM_CLANG=ON ../src
make -j2 cmd test-tool
ctest