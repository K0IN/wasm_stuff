typedef long jshandle_t;
typedef long functionhandle_t;

#define JSIMPORT(jscode, returntype, name, ...) \
    extern returntype name(__VA_ARGS__);