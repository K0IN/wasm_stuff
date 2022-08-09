CCFLAGS = -Wall -c --target=wasm32 
LNKFLAGS = --no-entry --allow-undefined --export-dynamic

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o

clean:
	rm -f *.wasm
	rm -f *.wat
	rm -f *.o

main.o: main.c
	$(CC) $(CCFLAGS) main.c
