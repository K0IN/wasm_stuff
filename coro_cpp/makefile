CXX = clang++-10
LNK = wasm-ld-10

CXXFLAGS = -Wall -c --target=wasm32 --std=c++2a -fcoroutines-ts -fno-threadsafe-statics --sysroot .
LNKFLAGS = --no-entry --allow-undefined --export-dynamic 

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o

clean:
	rm -f *.wasm
	rm -f *.wat
	rm -f *.o

main.o: main.cpp
	$(CXX) $(CXXFLAGS) main.cpp
