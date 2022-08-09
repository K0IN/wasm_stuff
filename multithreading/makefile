CXXFLAGS = -Oz -Wall -c --target=wasm32
LNKFLAGS = --no-entry --allow-undefined --export-dynamic --import-table --import-memory --shared-memory --max-memory=131072 --features=atomics,bulk-memory

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o

clean:
	rm -f *.wasm
	rm -f *.wat
	rm -f *.o

main.o: main.c
	$(CXX) $(CXXFLAGS) main.c
