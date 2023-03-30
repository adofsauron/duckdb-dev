#!/bin/bash

cd duckdb-0.7.1

mkdir -p build
cd build
cmake  -DCMAKE_BUILD_TYPE=Release ..
make -j`nproc`
make install

cd ../..
