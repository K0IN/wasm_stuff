CFLAGS = -flto -mreference-types -Oz -Wall -c --target=wasm32
LNKFLAGS = --no-entry --allow-undefined --export-dynamic --features=atomics,bulk-memory,reference-types

build: main.o
	$(LNK) $(LNKFLAGS) -o out.wasm main.o  

clean:
	rm -f *.wasm
	rm -f *.wat
	rm -f *.o

main.o: main.c
	$(CC) $(CFLAGS) main.c 
