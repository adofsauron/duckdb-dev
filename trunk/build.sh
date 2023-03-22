#!/bin/bash

cd duckdb-0.7.1

make debug -j`nproc`

cd -