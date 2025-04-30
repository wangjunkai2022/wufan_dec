package io.netty.channel.epoll;

import io.netty.channel.DefaultSelectStrategyFactory;
import io.netty.channel.EventLoop;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.MultithreadEventLoopGroup;
import io.netty.channel.SelectStrategyFactory;
import io.netty.util.concurrent.EventExecutorChooserFactory;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.concurrent.RejectedExecutionHandlers;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public final class EpollEventLoopGroup extends MultithreadEventLoopGroup {
    public EpollEventLoopGroup() {
        this(0);
    }

    @Deprecated
    public void setIoRatio(int i2) {
        if (i2 <= 0 || i2 > 100) {
            throw new IllegalArgumentException("ioRatio: " + i2 + " (expected: 0 < ioRatio <= 100)");
        }
    }

    public EpollEventLoopGroup(int i2) {
        this(i2, (ThreadFactory) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.MultithreadEventLoopGroup, io.netty.util.concurrent.MultithreadEventExecutorGroup
    public EventLoop newChild(Executor executor, Object... objArr) throws Exception {
        return new EpollEventLoop(this, executor, ((Integer) objArr[0]).intValue(), ((SelectStrategyFactory) objArr[1]).newSelectStrategy(), (RejectedExecutionHandler) objArr[2], objArr.length == 4 ? (EventLoopTaskQueueFactory) objArr[3] : null);
    }

    public EpollEventLoopGroup(ThreadFactory threadFactory) {
        this(0, threadFactory, 0);
    }

    public EpollEventLoopGroup(int i2, SelectStrategyFactory selectStrategyFactory) {
        this(i2, (ThreadFactory) null, selectStrategyFactory);
    }

    public EpollEventLoopGroup(int i2, ThreadFactory threadFactory) {
        this(i2, threadFactory, 0);
    }

    public EpollEventLoopGroup(int i2, Executor executor) {
        this(i2, executor, DefaultSelectStrategyFactory.INSTANCE);
    }

    public EpollEventLoopGroup(int i2, ThreadFactory threadFactory, SelectStrategyFactory selectStrategyFactory) {
        this(i2, threadFactory, 0, selectStrategyFactory);
    }

    @Deprecated
    public EpollEventLoopGroup(int i2, ThreadFactory threadFactory, int i4) {
        this(i2, threadFactory, i4, DefaultSelectStrategyFactory.INSTANCE);
    }

    @Deprecated
    public EpollEventLoopGroup(int i2, ThreadFactory threadFactory, int i4, SelectStrategyFactory selectStrategyFactory) {
        super(i2, threadFactory, Integer.valueOf(i4), selectStrategyFactory, RejectedExecutionHandlers.reject());
        Epoll.ensureAvailability();
    }

    public EpollEventLoopGroup(int i2, Executor executor, SelectStrategyFactory selectStrategyFactory) {
        super(i2, executor, 0, selectStrategyFactory, RejectedExecutionHandlers.reject());
        Epoll.ensureAvailability();
    }

    public EpollEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectStrategyFactory selectStrategyFactory) {
        super(i2, executor, eventExecutorChooserFactory, 0, selectStrategyFactory, RejectedExecutionHandlers.reject());
        Epoll.ensureAvailability();
    }

    public EpollEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectStrategyFactory selectStrategyFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, executor, eventExecutorChooserFactory, 0, selectStrategyFactory, rejectedExecutionHandler);
        Epoll.ensureAvailability();
    }

    public EpollEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectStrategyFactory selectStrategyFactory, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(i2, executor, eventExecutorChooserFactory, 0, selectStrategyFactory, rejectedExecutionHandler, eventLoopTaskQueueFactory);
        Epoll.ensureAvailability();
    }
}
