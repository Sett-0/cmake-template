#!/bin/bash

echo ""
BUILD_TYPE="${1,,}"

if [ "$BUILD_TYPE" = "release" ]; then
    echo "Generating release build files with CMake..."
    cd build/release || exit 1
    cmake ../.. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
else
    echo "Generating debug build files with CMake..."
    cd build/debug || exit 1
    cmake ../.. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug
fi
cd ../.. || exit 1
