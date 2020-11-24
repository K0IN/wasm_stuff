#include <experimental/coroutine>
#include "malloc.h"

extern "C" int fetch();
extern "C" int do_fetch(int);

namespace coro = std::experimental::coroutines;

class resumable
{
public:
    struct promise_type
    {
        int ret_val;
        resumable initial_suspend() { return {}; }
        resumable final_suspend() { return {}; }
        void return_value(int i)
        {
            ret_val = i;
        }
        resumable get_return_object()
        {
            return coro::coroutine_handle<promise_type>::from_promise(*this);
        }
        void unhandled_exception(){};
    };

    coro::coroutine_handle<promise_type> handle_;

    resumable() : handle_(0) {}
    resumable(coro::coroutine_handle<promise_type> handle) : handle_(handle) {}

    bool resume()
    {
        if (not handle_.done())
            handle_.resume();
        return not handle_.done();
    }
    int return_val()
    {
        return handle_.promise().ret_val;
    }

    bool await_ready()
    {
        return handle_.promise().ret_val == 0;
    }
    void await_suspend(std::experimental::coroutine_handle<>) {}
    int await_resume()
    {
        return handle_.promise().ret_val;
        ;
    }
};

template <>
struct coro::coroutine_traits<resumable>
{
    using promise_type = resumable::promise_type;
};

resumable foo(int x)
{
    while (true)
    {
        int f = do_fetch(x);
        if (f)
        {
            co_return f;
        }
        co_await std::experimental::coroutines::suspend_always();
    }
}

extern "C" __attribute__((visibility("default"))) int runtime()
{
    static int handle = fetch();
    resumable x = foo(handle);
    return x.return_val();
}