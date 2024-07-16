#!/bin/sh

# CMake Generate
cmake \
    -S . \
    -B cmake-build \
    -G "Visual Studio 17 2022" \
    -D CMAKE_BUILD_TYPE="Debug"

# CMake Build
cmake --build cmake-build -j 10
