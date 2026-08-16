#!/bin/bash

echo ""
BUILD_TYPE="${1,,}"

if [ "$BUILD_TYPE" = "release" ]; then
    echo "Building release executable files with CMake..."
    cd build/release || exit 1
else
    echo "Building debug executable files with CMake..."
    cd build/debug || exit 1
    cmake ../.. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug
fi
cmake --build .
cd ../.. || exit 1