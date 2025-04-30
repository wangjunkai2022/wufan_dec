package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: FutureSingleObserver.java */
/* loaded from: classes5.dex */
public final class i<T> extends CountDownLatch implements l0<T>, Future<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    T f65912a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f65913b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f65914c;

    public i() {
        super(1);
        this.f65914c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        io.reactivex.disposables.b bVar;
        DisposableHelper disposableHelper;
        do {
            bVar = this.f65914c.get();
            if (bVar == this || bVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f65914c.compareAndSet(bVar, disposableHelper));
        if (bVar != null) {
            bVar.dispose();
        }
        countDown();
        return true;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f65913b;
            if (th == null) {
                return this.f65912a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f65914c.get());
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        io.reactivex.disposables.b bVar;
        do {
            bVar = this.f65914c.get();
            if (bVar == DisposableHelper.DISPOSED) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f65913b = th;
        } while (!this.f65914c.compareAndSet(bVar, this));
        countDown();
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this.f65914c, bVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t3) {
        io.reactivex.disposables.b bVar = this.f65914c.get();
        if (bVar == DisposableHelper.DISPOSED) {
            return;
        }
        this.f65912a = t3;
        this.f65914c.compareAndSet(bVar, this);
        countDown();
    }

    @Override // java.util.concurrent.Future
    public T get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            if (!await(j4, timeUnit)) {
                throw new TimeoutException();
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f65913b;
            if (th == null) {
                return this.f65912a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
