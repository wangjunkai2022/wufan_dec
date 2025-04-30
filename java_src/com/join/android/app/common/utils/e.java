package com.join.android.app.common.utils;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: MThreadPoolExecutor.java */
/* loaded from: classes.dex */
public class e extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    String f17225a;

    public e(int i2, int i4, long j4, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        super(i2, i4, j4, timeUnit, blockingQueue);
        this.f17225a = getClass().getSimpleName();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        StringBuilder sb = new StringBuilder();
        sb.append("execute....getPoolSize()=");
        sb.append(getPoolSize());
        sb.append(";getActiveCount()=");
        sb.append(getActiveCount());
        sb.append(";getTaskCount()=");
        sb.append(getTaskCount());
        sb.append("getCorePoolSize()=");
        sb.append(getCorePoolSize());
        sb.append(";queue=");
        sb.append(getQueue().size());
        super.execute(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t3) {
        return super.submit(runnable, t3);
    }
}
