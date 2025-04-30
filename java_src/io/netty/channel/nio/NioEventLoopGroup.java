package io.netty.channel.nio;

import io.netty.channel.DefaultSelectStrategyFactory;
import io.netty.channel.EventLoop;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.MultithreadEventLoopGroup;
import io.netty.channel.SelectStrategyFactory;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.EventExecutorChooserFactory;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.concurrent.RejectedExecutionHandlers;
import java.nio.channels.spi.SelectorProvider;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public class NioEventLoopGroup extends MultithreadEventLoopGroup {
    public NioEventLoopGroup() {
        this(0);
    }

    public void rebuildSelectors() {
        Iterator<EventExecutor> it2 = iterator();
        while (it2.hasNext()) {
            ((NioEventLoop) it2.next()).rebuildSelector();
        }
    }

    public void setIoRatio(int i2) {
        Iterator<EventExecutor> it2 = iterator();
        while (it2.hasNext()) {
            ((NioEventLoop) it2.next()).setIoRatio(i2);
        }
    }

    public NioEventLoopGroup(int i2) {
        this(i2, (Executor) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.MultithreadEventLoopGroup, io.netty.util.concurrent.MultithreadEventExecutorGroup
    public EventLoop newChild(Executor executor, Object... objArr) throws Exception {
        return new NioEventLoop(this, executor, (SelectorProvider) objArr[0], ((SelectStrategyFactory) objArr[1]).newSelectStrategy(), (RejectedExecutionHandler) objArr[2], objArr.length == 4 ? (EventLoopTaskQueueFactory) objArr[3] : null);
    }

    public NioEventLoopGroup(ThreadFactory threadFactory) {
        this(0, threadFactory, SelectorProvider.provider());
    }

    public NioEventLoopGroup(int i2, ThreadFactory threadFactory) {
        this(i2, threadFactory, SelectorProvider.provider());
    }

    public NioEventLoopGroup(int i2, Executor executor) {
        this(i2, executor, SelectorProvider.provider());
    }

    public NioEventLoopGroup(int i2, ThreadFactory threadFactory, SelectorProvider selectorProvider) {
        this(i2, threadFactory, selectorProvider, DefaultSelectStrategyFactory.INSTANCE);
    }

    public NioEventLoopGroup(int i2, ThreadFactory threadFactory, SelectorProvider selectorProvider, SelectStrategyFactory selectStrategyFactory) {
        super(i2, threadFactory, selectorProvider, selectStrategyFactory, RejectedExecutionHandlers.reject());
    }

    public NioEventLoopGroup(int i2, Executor executor, SelectorProvider selectorProvider) {
        this(i2, executor, selectorProvider, DefaultSelectStrategyFactory.INSTANCE);
    }

    public NioEventLoopGroup(int i2, Executor executor, SelectorProvider selectorProvider, SelectStrategyFactory selectStrategyFactory) {
        super(i2, executor, selectorProvider, selectStrategyFactory, RejectedExecutionHandlers.reject());
    }

    public NioEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectorProvider selectorProvider, SelectStrategyFactory selectStrategyFactory) {
        super(i2, executor, eventExecutorChooserFactory, selectorProvider, selectStrategyFactory, RejectedExecutionHandlers.reject());
    }

    public NioEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectorProvider selectorProvider, SelectStrategyFactory selectStrategyFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, executor, eventExecutorChooserFactory, selectorProvider, selectStrategyFactory, rejectedExecutionHandler);
    }

    public NioEventLoopGroup(int i2, Executor executor, EventExecutorChooserFactory eventExecutorChooserFactory, SelectorProvider selectorProvider, SelectStrategyFactory selectStrategyFactory, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(i2, executor, eventExecutorChooserFactory, selectorProvider, selectStrategyFactory, rejectedExecutionHandler, eventLoopTaskQueueFactory);
    }
}
