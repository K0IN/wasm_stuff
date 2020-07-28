static inline struct pthread *__pthread_self()
{
    // not implemented
	struct pthread *self;
//	__asm__ __volatile__ ("movl %%gs:0,%0" : "=r" (self) );
	return self;
}

#define TP_ADJ(p) (p)

#define MC_PC gregs[REG_EIP]
