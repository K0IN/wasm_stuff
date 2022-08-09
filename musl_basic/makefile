CXXFLAGS = -Oz -c -Wall --target=wasm32 --sysroot=./musl/
LNKFLAGS = --no-entry --allow-undefined --export-dynamic

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o musl/lib/libc.a

clean:
	rm -f *.o
	rm -f out.wasm
	

main.o: main.c
	$(CXX) $(CXXFLAGS) main.c
