#include "common.h"

extern OSThread* __osRunningThread; // todo remove eventually

void osStopThread(OSThread* thread) {
    register u32 s0 = __osDisableInt();
    register u32 state;

    if (thread == NULL) {
        state = 4;
    } else {
        state = thread->state;
    }

    switch (state) {
        case 4:
            __osRunningThread->state = 1;
            __osEnqueueAndYield(NULL);
            break;
        case 2:
        case 8:
            thread->state = 1;
            __osDequeueThread(thread->queue, thread);
            break;
    }

    __osRestoreInt(s0);
}
