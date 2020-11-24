#pragma once
extern unsigned char __heap_base;

unsigned int heap_top = (unsigned int)&__heap_base;

void *malloc(int n)
{
    unsigned int r = heap_top;
    heap_top += n;
    return (void *)r;
}

void free(void *p) {}

void *operator new(unsigned long size)
{
    return malloc(size);
}

void *operator new[](unsigned long size)
{
    return malloc(size);
}

void operator delete(void *t) noexcept
{
    free(t);
}
void operator delete[](void *t) noexcept
{
    free(t);
}