#include "import.h"

JSIMPORT({
	const obj = new Object();
	obj.test = string;
	extern.log(`new_object Object(${JSON.stringify(obj)})`);
	return obj;
}, jshandle_t, new_object, char* string)

JSIMPORT({
	extern.log(`print_object Object(${JSON.stringify(obj)})`);
}, void, print_object, jshandle_t obj)

JSIMPORT({
	extern.log(string);
}, int, console_log, char* string)

JSIMPORT({
	extern.log(`setTimeout on function(${fn}) with timeout ${ms}`);
	setTimeout(fn,ms);
}, int, setTimeout, functionhandle_t fn, int ms)

int callback()
{
	console_log("callback just got called!");
	return 0;
}

extern __attribute__((visibility("default"))) int init()
{
	console_log("WASM::console_log: Hi from C");
	setTimeout((functionhandle_t)callback, 5000);
	// example that we can use objects from c
	jshandle_t someJsObject = new_object("test value");
	print_object(someJsObject);
	// dont forget to delete the object with jsfunction to removeObjectRef(handle) later
	return 1;
}