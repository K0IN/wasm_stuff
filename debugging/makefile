CXX = clang-10
LNK = wasm-ld-10
WASMOPT = wasm-opt

CXXFLAGS = -c -Wall --target=wasm32 
LNKFLAGS = --no-entry --allow-undefined --export-dynamic
DBGFLAGS = --debug -gfull -gdwarf -fdebug-compilation-dir=D:\\src\\wasm_stuff\\debugging\\ -fno-discard-value-names
COMPILE = $(CXX) $(CXXFLAGS) $(DBGFLAGS) 

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o

clean:
	rm -f *.wasm
	rm -f *.o

main.o: main.c 
	$(COMPILE) main.c -o main.o
