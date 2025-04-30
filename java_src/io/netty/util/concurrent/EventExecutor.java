package io.netty.util.concurrent;
/* loaded from: classes5.dex */
public interface EventExecutor extends EventExecutorGroup {
    boolean inEventLoop();

    boolean inEventLoop(Thread thread);

    <V> Future<V> newFailedFuture(Throwable th);

    <V> ProgressivePromise<V> newProgressivePromise();

    <V> Promise<V> newPromise();

    <V> Future<V> newSucceededFuture(V v3);

    @Override // io.netty.util.concurrent.EventExecutorGroup, io.netty.channel.EventLoopGroup
    EventExecutor next();

    EventExecutorGroup parent();
}
