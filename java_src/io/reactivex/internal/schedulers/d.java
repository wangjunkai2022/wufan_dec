package io.reactivex.internal.schedulers;

import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InstantPeriodicTask.java */
/* loaded from: classes5.dex */
public final class d implements Callable<Void>, io.reactivex.disposables.b {

    /* renamed from: f  reason: collision with root package name */
    static final FutureTask<Void> f69899f = new FutureTask<>(Functions.f65823b, null);

    /* renamed from: a  reason: collision with root package name */
    final Runnable f69900a;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f69903d;

    /* renamed from: e  reason: collision with root package name */
    Thread f69904e;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Future<?>> f69902c = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<Future<?>> f69901b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Runnable runnable, ExecutorService executorService) {
        this.f69900a = runnable;
        this.f69903d = executorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f69902c.get();
            if (future2 == f69899f) {
                future.cancel(this.f69904e != Thread.currentThread());
                return;
            }
        } while (!this.f69902c.compareAndSet(future2, future));
    }

    void b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f69901b.get();
            if (future2 == f69899f) {
                future.cancel(this.f69904e != Thread.currentThread());
                return;
            }
        } while (!this.f69901b.compareAndSet(future2, future));
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f69902c;
        FutureTask<Void> futureTask = f69899f;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f69904e != Thread.currentThread());
        }
        Future<?> andSet2 = this.f69901b.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f69904e != Thread.currentThread());
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f69902c.get() == f69899f;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f69904e = Thread.currentThread();
        try {
            this.f69900a.run();
            b(this.f69903d.submit(this));
            this.f69904e = null;
        } catch (Throwable th) {
            this.f69904e = null;
            io.reactivex.plugins.a.Y(th);
        }
        return null;
    }
}
