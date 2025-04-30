package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: FutureObserver.java */
/* loaded from: classes5.dex */
public final class h<T> extends CountDownLatch implements g0<T>, Future<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    T f65909a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f65910b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f65911c;

    public h() {
        super(1);
        this.f65911c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        io.reactivex.disposables.b bVar;
        DisposableHelper disposableHelper;
        do {
            bVar = this.f65911c.get();
            if (bVar == this || bVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f65911c.compareAndSet(bVar, disposableHelper));
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
            Throwable th = this.f65910b;
            if (th == null) {
                return this.f65909a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f65911c.get());
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        io.reactivex.disposables.b bVar;
        if (this.f65909a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            bVar = this.f65911c.get();
            if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                return;
            }
        } while (!this.f65911c.compareAndSet(bVar, this));
        countDown();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.disposables.b bVar;
        if (this.f65910b == null) {
            this.f65910b = th;
            do {
                bVar = this.f65911c.get();
                if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
            } while (!this.f65911c.compareAndSet(bVar, this));
            countDown();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (this.f65909a != null) {
            this.f65911c.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f65909a = t3;
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this.f65911c, bVar);
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
            Throwable th = this.f65910b;
            if (th == null) {
                return this.f65909a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
