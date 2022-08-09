CXXFLAGS = -Oz -Wall -c --target=wasm32
LNKFLAGS = --no-entry --allow-undefined --export-dynamic --import-table --import-memory --max-memory=131072

build: main.o out.js
	$(LNK) $(LNKFLAGS) -o out.wasm main.o 
	
out.js: main.c
	node compile.js out.js main.c

clean:
	rm -f *.wasm
	rm -f *.o
	rm -f out.js

main.o: main.c
	$(CXX) $(CXXFLAGS) main.c
