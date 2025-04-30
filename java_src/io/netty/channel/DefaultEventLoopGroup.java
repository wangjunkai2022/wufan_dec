package io.netty.channel;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public class DefaultEventLoopGroup extends MultithreadEventLoopGroup {
    public DefaultEventLoopGroup() {
        this(0);
    }

    public DefaultEventLoopGroup(int i2) {
        this(i2, (ThreadFactory) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.MultithreadEventLoopGroup, io.netty.util.concurrent.MultithreadEventExecutorGroup
    public EventLoop newChild(Executor executor, Object... objArr) throws Exception {
        return new DefaultEventLoop(this, executor);
    }

    public DefaultEventLoopGroup(ThreadFactory threadFactory) {
        this(0, threadFactory);
    }

    public DefaultEventLoopGroup(int i2, ThreadFactory threadFactory) {
        super(i2, threadFactory, new Object[0]);
    }

    public DefaultEventLoopGroup(int i2, Executor executor) {
        super(i2, executor, new Object[0]);
    }
}
