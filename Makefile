build:
	mkdir -p build
	emcc hello.c -s WASM=1 -o build/hello.html

clean:
	rm -rf build
