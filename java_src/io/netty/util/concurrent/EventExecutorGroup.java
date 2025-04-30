package io.netty.util.concurrent;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public interface EventExecutorGroup extends ScheduledExecutorService, Iterable<EventExecutor> {
    boolean isShuttingDown();

    Iterator<EventExecutor> iterator();

    EventExecutor next();

    @Override // java.util.concurrent.ScheduledExecutorService
    c<?> schedule(Runnable runnable, long j4, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    <V> c<V> schedule(Callable<V> callable, long j4, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    c<?> scheduleAtFixedRate(Runnable runnable, long j4, long j5, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    c<?> scheduleWithFixedDelay(Runnable runnable, long j4, long j5, TimeUnit timeUnit);

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    void shutdown();

    Future<?> shutdownGracefully();

    Future<?> shutdownGracefully(long j4, long j5, TimeUnit timeUnit);

    @Override // io.netty.util.concurrent.EventExecutorGroup
    @Deprecated
    List<Runnable> shutdownNow();

    @Override // java.util.concurrent.ExecutorService, io.netty.util.concurrent.EventExecutorGroup
    Future<?> submit(Runnable runnable);

    @Override // java.util.concurrent.ExecutorService, io.netty.util.concurrent.EventExecutorGroup
    <T> Future<T> submit(Runnable runnable, T t3);

    @Override // java.util.concurrent.ExecutorService, io.netty.util.concurrent.EventExecutorGroup
    <T> Future<T> submit(Callable<T> callable);

    Future<?> terminationFuture();
}
