package io.netty.channel.kqueue;

import io.netty.channel.DefaultSelectStrategyFactory;
import io.netty.channel.EventLoop;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.MultithreadEventLoopGroup;
import io.netty.channel.SelectStrategyFactory;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.EventExecutorChooserFactory;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.concurrent.RejectedExecutionHandlers;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public final class KQueueEventLoopGroup extends MultithreadEventLoopGroup {
    public KQueueEventLoopGroup() {
        this(0);
    }

    public void setIoRatio(int i2) {
        Iterator<EventExecutor> it2 = iterator();
        while (it2.hasNext()) {
            ((KQueueEventLoop) it2.next()).setIoRatio(i2);
        }
    }

    public KQueueEventLoopGroup(int i2) {
        this(i2, (ThreadFactory) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.MultithreadEventLoopGroup, io.netty.util.concurrent.MultithreadEventExecutorGroup
    public EventLoop newChild(Executor executor, Object... objArr) throws Exception {
        return new KQueueEventLoop(this, executor, ((Integer) objArr[0]).intValue(), ((SelectStrategyFactory) objArr[1]).newSelectStrategy(), (RejectedExecutionHandler) objArr[2], objArr.length == 4 ? (EventLoopTaskQueueFactory) objArr[3] : null);
    }

    public KQueueEventLoopGroup(ThreadFactory threadFactory) {
        this(0, threadFactory, 0);
    }

    public KQueueEventLoopGroup(int i2, SelectStrategyFactory selectStrategyFactory) {
        this(i2, (ThreadFactory) null, selectStrategyFactory);
    }

    public KQueueEventLoopGroup(int i2, ThreadFactory threadFactory) {
        this(i2, threadFactory, 0);
    }

    public KQueueEventLoopGroup(int i2, Executor executor) {
        this(i2, executor, DefaultSelectStrategyFactory.INSTANCE);
    }

    public KQueueEventLoopGroup(int i2, ThreadFactory threadFactory, SelectStrategyFactory selectStrategyFactory) {
        this(i2, threadFactory, 0, selectStrategyFactory);
    }

    @Deprecated
    public KQueueEventLoopGroup(int i2, ThreadFactory threadFactory, int i4) {
        this(i2, threadFactory, i4, DefaultSelectStrategyFactory.INSTANCE);
    }

    @Deprecated
    public KQueueEventLoopGroup(int i2, ThreadFactory threadFactory, int i4, SelectStrategyFactory selectStrategyFactory) {
        super(i2, threadFactory, Integer.valueOf(i4), selectStrategyFactory, RejectedExecutionHandlers.reject());
        KQueue.ensureAvailability();
    }

    public KQueueEventLoopGroup(int i2, Executor executor, SelectStrategyFactory selectStrategyFactory) {
        super(i2, executor, 0, selectStrategyFactory, RejectedExecutionHandlers.reject());
        KQueue.ensureAvailability();
    }

    public KQueueEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectStrategyFactory selectStrategyFactory) {
        super(i2, executor, eventExecutorChooserFactory, 0, selectStrategyFactory, RejectedExecutionHandlers.reject());
        KQueue.ensureAvailability();
    }

    public KQueueEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectStrategyFactory selectStrategyFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, executor, eventExecutorChooserFactory, 0, selectStrategyFactory, rejectedExecutionHandler);
        KQueue.ensureAvailability();
    }

    public KQueueEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectStrategyFactory selectStrategyFactory, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(i2, executor, eventExecutorChooserFactory, 0, selectStrategyFactory, rejectedExecutionHandler, eventLoopTaskQueueFactory);
        KQueue.ensureAvailability();
    }
}
