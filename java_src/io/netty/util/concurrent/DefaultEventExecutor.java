package io.netty.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public final class DefaultEventExecutor extends SingleThreadEventExecutor {
    public DefaultEventExecutor() {
        this((EventExecutorGroup) null);
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void run() {
        do {
            Runnable takeTask = takeTask();
            if (takeTask != null) {
                takeTask.run();
                updateLastExecutionTime();
            }
        } while (!confirmShutdown());
    }

    public DefaultEventExecutor(ThreadFactory threadFactory) {
        this((EventExecutorGroup) null, threadFactory);
    }

    public DefaultEventExecutor(Executor executor) {
        this((EventExecutorGroup) null, executor);
    }

    public DefaultEventExecutor(EventExecutorGroup eventExecutorGroup) {
        this(eventExecutorGroup, new DefaultThreadFactory(DefaultEventExecutor.class));
    }

    public DefaultEventExecutor(EventExecutorGroup eventExecutorGroup, ThreadFactory threadFactory) {
        super(eventExecutorGroup, threadFactory, true);
    }

    public DefaultEventExecutor(EventExecutorGroup eventExecutorGroup, Executor executor) {
        super(eventExecutorGroup, executor, true);
    }

    public DefaultEventExecutor(EventExecutorGroup eventExecutorGroup, ThreadFactory threadFactory, int i2, RejectedExecutionHandler rejectedExecutionHandler) {
        super(eventExecutorGroup, threadFactory, true, i2, rejectedExecutionHandler);
    }

    public DefaultEventExecutor(EventExecutorGroup eventExecutorGroup, Executor executor, int i2, RejectedExecutionHandler rejectedExecutionHandler) {
        super(eventExecutorGroup, executor, true, i2, rejectedExecutionHandler);
    }
}
