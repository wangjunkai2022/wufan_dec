package com.facebook.common.executors;

import android.os.Handler;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* compiled from: HandlerExecutorServiceImpl.java */
/* loaded from: classes.dex */
public class e extends AbstractExecutorService implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f11679a;

    public e(Handler handler) {
        this.f11679a = handler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* renamed from: a */
    public <T> f<T> newTaskFor(Runnable runnable, T t3) {
        return new f<>(this.f11679a, runnable, t3);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j4, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* renamed from: b */
    public <T> f<T> newTaskFor(Callable<T> callable) {
        return new f<>(this.f11679a, callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: c */
    public ScheduledFuture<?> submit(Runnable runnable) {
        return submit(runnable, null);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: d */
    public <T> ScheduledFuture<T> submit(Runnable runnable, @Nullable T t3) {
        Objects.requireNonNull(runnable);
        f<T> newTaskFor = newTaskFor(runnable, t3);
        execute(newTaskFor);
        return newTaskFor;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: e */
    public <T> ScheduledFuture<T> submit(Callable<T> callable) {
        Objects.requireNonNull(callable);
        f<T> newTaskFor = newTaskFor(callable);
        execute(newTaskFor);
        return newTaskFor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f11679a.post(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // com.facebook.common.executors.d
    public void k0() {
        this.f11679a.getLooper().quit();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(Runnable runnable, long j4, TimeUnit timeUnit) {
        f newTaskFor = newTaskFor(runnable, null);
        this.f11679a.postDelayed(newTaskFor, timeUnit.toMillis(j4));
        return newTaskFor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.common.executors.d
    public boolean v0() {
        return Thread.currentThread() == this.f11679a.getLooper().getThread();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j4, TimeUnit timeUnit) {
        f newTaskFor = newTaskFor(callable);
        this.f11679a.postDelayed(newTaskFor, timeUnit.toMillis(j4));
        return newTaskFor;
    }
}
