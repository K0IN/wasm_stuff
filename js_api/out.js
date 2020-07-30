// !THIS FILE IS AUTO GENERATED!
    export const initEnv = (memory, table, extern) => {
        const objectRef = [null];
        const createObjectRef = (obj) => {           
            if (obj === undefined || obj === null) {
                return 0;
            }
            objectRef.push(obj);
            return objectRef.length - 1;
        }

        const getObjectByRef = (ref) => {
            return objectRef[ref] || null;
        }

        const removeObjectRef = (ref) => {
            if (ref === 0) {
                throw Error(`Tried to free null ref(0) obj!`);
            } else if (objectRef[ref]) {
                delete objectRef[ref];
            } else {
                throw Error(`Tried to free unused ref(${ref})!`);
            }
        }
        
        const getFunction = (index) => {
            return table.get(index);
        }

        const readString = (address) => {
            if(address === 0){
                return null;
            }
            let string = "";
            const mem = new Uint8Array(memory.buffer);
            while (address < mem.length && mem[address] !== 0) {
                const byte = mem[address];
                string += String.fromCharCode(byte);
                address += 1;
            }
            return string;
        }

        const env = {}
        env.new_object = (string_tmp) => {
        const tmpFn = (string) => {
	const obj = new Object();
	obj.test = string;
	extern.log(`new_object Object(${JSON.stringify(obj)})`);
	return obj;
};
        string_tmp = readString(string_tmp);

        return createObjectRef(tmpFn(string_tmp));
    };
env.print_object = (obj_tmp) => {
        const tmpFn = (obj) => {
	extern.log(`print_object Object(${JSON.stringify(obj)})`);
};
        obj_tmp = getObjectByRef(obj_tmp);

        return tmpFn(obj_tmp);
    };
env.console_log = (string_tmp) => {
        const tmpFn = (string) => {
	extern.log(string);
};
        string_tmp = readString(string_tmp);

        return tmpFn(string_tmp);
    };
env.setTimeout = (fn_tmp, ms_tmp) => {
        const tmpFn = (fn, ms) => {
	extern.log(`setTimeout on function(${fn}) with timeout ${ms}`);
	setTimeout(fn,ms);
};
        fn_tmp = getFunction(fn_tmp);

        return tmpFn(fn_tmp, ms_tmp);
    }; 
        return env;
    }
    