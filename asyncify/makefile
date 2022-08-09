CXXFLAGS = -Oz -Wall -c --target=wasm32
LNKFLAGS = --no-entry --allow-undefined --export-dynamic --export __data_end
WASMOPTFLAGS = -Oz --asyncify

build: main.o
	$(LNK) $(LNKFLAGS) -o tmp.wasm main.o
	$(WASMOPT) $(WASMOPTFLAGS) -o out.wasm tmp.wasm

clean:
	rm -f *.wasm
	rm -f *.o

main.o: main.c 
	$(CXX) $(CXXFLAGS) main.c
