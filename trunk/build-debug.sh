#!/bin/bash

cd duckdb-0.7.1

mkdir -p build
cd build
cmake  -DCMAKE_BUILD_TYPE=Debug ..
make -j`nproc`

cd ../..
