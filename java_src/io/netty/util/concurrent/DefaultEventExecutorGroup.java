package io.netty.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public class DefaultEventExecutorGroup extends MultithreadEventExecutorGroup {
    public DefaultEventExecutorGroup(int i2) {
        this(i2, null);
    }

    @Override // io.netty.util.concurrent.MultithreadEventExecutorGroup
    protected EventExecutor newChild(Executor executor, Object... objArr) throws Exception {
        return new DefaultEventExecutor(this, executor, ((Integer) objArr[0]).intValue(), (RejectedExecutionHandler) objArr[1]);
    }

    public DefaultEventExecutorGroup(int i2, ThreadFactory threadFactory) {
        this(i2, threadFactory, SingleThreadEventExecutor.DEFAULT_MAX_PENDING_EXECUTOR_TASKS, RejectedExecutionHandlers.reject());
    }

    public DefaultEventExecutorGroup(int i2, ThreadFactory threadFactory, int i4, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, threadFactory, Integer.valueOf(i4), rejectedExecutionHandler);
    }
}
