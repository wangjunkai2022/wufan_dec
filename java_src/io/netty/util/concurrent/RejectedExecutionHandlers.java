package io.netty.util.concurrent;

import io.netty.util.internal.ObjectUtil;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes5.dex */
public final class RejectedExecutionHandlers {
    private static final RejectedExecutionHandler REJECT = new RejectedExecutionHandler() { // from class: io.netty.util.concurrent.RejectedExecutionHandlers.1
        @Override // io.netty.util.concurrent.RejectedExecutionHandler
        public void rejected(Runnable runnable, SingleThreadEventExecutor singleThreadEventExecutor) {
            throw new RejectedExecutionException();
        }
    };

    private RejectedExecutionHandlers() {
    }

    public static RejectedExecutionHandler backoff(final int i2, long j4, TimeUnit timeUnit) {
        ObjectUtil.checkPositive(i2, "retries");
        final long nanos = timeUnit.toNanos(j4);
        return new RejectedExecutionHandler() { // from class: io.netty.util.concurrent.RejectedExecutionHandlers.2
            @Override // io.netty.util.concurrent.RejectedExecutionHandler
            public void rejected(Runnable runnable, SingleThreadEventExecutor singleThreadEventExecutor) {
                if (!singleThreadEventExecutor.inEventLoop()) {
                    for (int i4 = 0; i4 < i2; i4++) {
                        singleThreadEventExecutor.wakeup(false);
                        LockSupport.parkNanos(nanos);
                        if (singleThreadEventExecutor.offerTask(runnable)) {
                            return;
                        }
                    }
                }
                throw new RejectedExecutionException();
            }
        };
    }

    public static RejectedExecutionHandler reject() {
        return REJECT;
    }
}
