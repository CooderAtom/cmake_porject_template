#!/usr/bin/env bash
BUILD_DIR=build
if [ "$1" = "clean" ]; then
rm -rf "$BUILD_DIR" main
exit 0
fi
# CMAKE_OPTS="-DCMAKE_TOOLCHAIN_FILE=./arm-linux-gnueabihf-toolchain.cmake"

echo "Gonna make ..."

mkdir -p  build
cd build

cmake \
    # $CMAKE_OPTS \
    # -DCMAKE_VERBOSE_MAKEFILE=ON \
    # -DDEBUG=ON \
    ..
    
make & make install