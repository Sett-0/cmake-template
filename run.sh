#!/bin/bash

echo ""
if [ -z "$1" ]; then
    echo "Specify the run target. Example usage: \"run main\"."
    exit 1
fi

BUILD_TYPE="${2,,}"
if [ "$BUILD_TYPE" = "release" ]; then
    echo "Running bin/release/$1..."
    "bin/release/$1"
else
    echo "Running bin/debug/$1..."
    "bin/debug/$1"
fi

