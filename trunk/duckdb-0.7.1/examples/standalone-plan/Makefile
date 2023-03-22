

.PHONY: duckdb clean main

all: main

clean:
	rm -rf build

duckdb:
	cd ../.. && make debug -j`nproc`

main:
	mkdir -p build
	cd build && cmake .. -DCMAKE_BUILD_TYPE=Debug && cmake --build .
	build/example


