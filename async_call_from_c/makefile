CXX = clang-10
LNK = wasm-ld-10

CXXFLAGS = -Oz -c --target=wasm32
LNKFLAGS = --no-entry --allow-undefined --export-dynamic --strip-all

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o 

clean:
	rm -f *.wasm
	rm -f *.wat
	rm -f *.o

main.o: main.c
	$(CXX) $(CXXFLAGS) main.c
