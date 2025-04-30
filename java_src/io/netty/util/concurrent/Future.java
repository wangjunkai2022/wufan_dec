package io.netty.util.concurrent;

import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public interface Future<V> extends java.util.concurrent.Future<V> {
    Future<V> addListener(GenericFutureListener<? extends Future<? super V>> genericFutureListener);

    Future<V> addListeners(GenericFutureListener<? extends Future<? super V>>... genericFutureListenerArr);

    Future<V> await() throws InterruptedException;

    boolean await(long j4) throws InterruptedException;

    boolean await(long j4, TimeUnit timeUnit) throws InterruptedException;

    Future<V> awaitUninterruptibly();

    boolean awaitUninterruptibly(long j4);

    boolean awaitUninterruptibly(long j4, TimeUnit timeUnit);

    @Override // java.util.concurrent.Future
    boolean cancel(boolean z3);

    Throwable cause();

    V getNow();

    boolean isCancellable();

    boolean isSuccess();

    Future<V> removeListener(GenericFutureListener<? extends Future<? super V>> genericFutureListener);

    Future<V> removeListeners(GenericFutureListener<? extends Future<? super V>>... genericFutureListenerArr);

    Future<V> sync() throws InterruptedException;

    Future<V> syncUninterruptibly();
}
