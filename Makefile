build:
	mkdir -p build
	emcc hello.c -s WASM=1 -o build/hello.html \
		--shell-file html/shell-minimal.html

serve: build
	python -m http.server --directory build

clean:
	rm -rf build
