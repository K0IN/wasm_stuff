const fileSystem = require('fs');

const objectHandleType = "jshandle_t";
const functionHandleType = "functionhandle_t"

const isObjectHandleType = (type) => type === objectHandleType;
const toTempName = (parameterName) => `${parameterName}_tmp`;
const createTempParameterNames = (parameterInfoList) => parameterInfoList.map(e => toTempName(e.name)).join(', ');
const createParameterNames = (parameterInfoList) => parameterInfoList.map(e => e.name).join(', ');

const getFullType = (parameter) => {
    const type = /((const |unsigned | signed)?.*?) /g.exec(parameter)[1];
    return type.replace('*', '');
}

const getPointerDepth = (parameter) => {
    return (parameter.match(/\*/g) || []).length;
}

const getParameterName = (parameter) => {
    const name = /\ (.*?)$/g.exec(parameter)[1];
    return name.replace('*', '');
}

const createConversionCode = (parameterInfoList) => {
    var code = ""
    for (const parameter of parameterInfoList) {
        switch (parameter.fulltype) {
            case "const char":
            case "char":
                if (parameter.pointer === 1)
                    code += `${toTempName(parameter.name)} = readString(${toTempName(parameter.name)});\n`;
                break;

            case objectHandleType:
                if (parameter.pointer === 0)
                    code += `${toTempName(parameter.name)} = getObjectByRef(${toTempName(parameter.name)});\n`;
                break;

            case functionHandleType:
                if (parameter.pointer === 0)
                    code += `${toTempName(parameter.name)} = getFunction(${toTempName(parameter.name)});\n`;
                break;
        }
    }
    return code;
}

const prepareParameters = (parameters) => {
    const parameterList = parameters.split(",").map((e) => e.trim());
    const parameterInfoList = [];
    for (const parameter_str of parameterList) {
        parameterInfoList.push({
            name: getParameterName(parameter_str),
            pointer: getPointerDepth(parameter_str),
            fulltype: getFullType(parameter_str)
        });
    }
    return parameterInfoList;
}

const generateJavascriptFromBody = (jscode, returntype, parameters) => {
    const jsParameter = prepareParameters(parameters);
    const src = `(${createTempParameterNames(jsParameter)}) => {
        const tmpFn = (${createParameterNames(jsParameter)}) => ${jscode};
        ${createConversionCode(jsParameter)}
        return ${isObjectHandleType(returntype) ?
            `createObjectRef(tmpFn(${createTempParameterNames(jsParameter)}))` :
            `tmpFn(${createTempParameterNames(jsParameter)})`};
    }`;
    return src;
}

const matchCodeBlock = (codeStart) => {
    let open = 1;
    let readIndex = 0;
    while (open !== 0 && readIndex < codeStart.length) {
        const char = codeStart.charAt(readIndex);
        switch (char) {
            case '{': open += 1; break;
            case '}': open -= 1; break;
        }
        readIndex++;
    }
    return '{' + codeStart.substring(0, readIndex);
}

const parseMacro = (macro) => {
    // we hard match ({}, never use spaces between ( and { or } and ,
    const codeStart = macro.substring("JSIMPORT({".length); // + 1 so we match the first { 
    const code = matchCodeBlock(codeStart);
    const afterCode = codeStart.substring(code.length + 1);
    const regex = /(.*?), (.*?), (.*?)\)/gms;
    const [fullMatch, returnType, functionName, parameters] = regex.exec(afterCode);
    return { returnType, functionName, parameters, code };
}

const processFile = (content) => {
    const matches = [];
    const regex = /^JSIMPORT\((.*?)\)$/gms;
    let match;
    while ((match = regex.exec(content)) !== null) {
        if (match.index === regex.lastIndex) {
            regex.lastIndex++;
        }
        const macro = parseMacro(match[0]);
        matches.push(macro);
    }
    return matches;
}

function main(outputFileName, files) {
    const functions = [];

    for (const fileName of files) {
        const content = fileSystem.readFileSync(fileName, 'utf8');
        const macros = processFile(content);

        for (const macroInfo of macros) {
            const code = generateJavascriptFromBody(
                macroInfo.code, macroInfo.returnType,
                macroInfo.parameters);

            functions.push({ name: macroInfo.functionName, code })
        }
    }

    const outputFile = `// !THIS FILE IS AUTO GENERATED!
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
                throw Error(\`Tried to free null ref(0) obj!\`);
            } else if (objectRef[ref]) {
                delete objectRef[ref];
            } else {
                throw Error(\`Tried to free unused ref(\${ref})!\`);
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
        ${functions.map(functionInfo => `env.${functionInfo.name} = ${functionInfo.code};`).join('\n')} 
        return env;
    }
    `;

    // todo run it to uglify js
    fileSystem.writeFileSync(outputFileName, outputFile);
}

const [nodePath, currentFile, outFile, ...inputFiles] = process.argv;
main(outFile, inputFiles);