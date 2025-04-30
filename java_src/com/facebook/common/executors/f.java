package com.facebook.common.executors;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;
/* compiled from: ScheduledFutureImpl.java */
/* loaded from: classes.dex */
public class f<V> implements RunnableFuture<V>, ScheduledFuture<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f11680a;

    /* renamed from: b  reason: collision with root package name */
    private final FutureTask<V> f11681b;

    public f(Handler handler, Callable<V> callable) {
        this.f11680a = handler;
        this.f11681b = new FutureTask<>(callable);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        return this.f11681b.cancel(z3);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return this.f11681b.get();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f11681b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f11681b.isDone();
    }

    @Override // java.lang.Comparable
    /* renamed from: m */
    public int compareTo(Delayed delayed) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f11681b.run();
    }

    @Override // java.util.concurrent.Future
    public V get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f11681b.get(j4, timeUnit);
    }

    public f(Handler handler, Runnable runnable, @Nullable V v3) {
        this.f11680a = handler;
        this.f11681b = new FutureTask<>(runnable, v3);
    }
}
