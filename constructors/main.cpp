class Test {
    private: 
        int example; 
    public:	
        Test(int x) { this->example = x; } 
        int getExample() { return this->example; } 
};

Test exampleConstructor(1337);

extern "C" __attribute__((visibility("default"))) int runtime()
{
    return exampleConstructor.getExample();
}