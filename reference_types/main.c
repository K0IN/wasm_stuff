typedef void __attribute__((address_space(10)))* externref;

extern externref getDomNode();
extern void writeToNode(externref node, int number);

extern __attribute__((visibility("default"))) void runtime(int arg)
{
    externref node = getDomNode();
    writeToNode(node, arg);
}