package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: FutureSubscriber.java */
/* loaded from: classes5.dex */
public final class f<T> extends CountDownLatch implements o<T>, Future<T>, l3.d {

    /* renamed from: a  reason: collision with root package name */
    T f70018a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f70019b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<l3.d> f70020c;

    public f() {
        super(1);
        this.f70020c = new AtomicReference<>();
    }

    @Override // l3.d
    public void cancel() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        l3.d dVar;
        SubscriptionHelper subscriptionHelper;
        do {
            dVar = this.f70020c.get();
            if (dVar == this || dVar == (subscriptionHelper = SubscriptionHelper.CANCELLED)) {
                return false;
            }
        } while (!this.f70020c.compareAndSet(dVar, subscriptionHelper));
        if (dVar != null) {
            dVar.cancel();
        }
        countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f70019b;
            if (th == null) {
                return this.f70018a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return SubscriptionHelper.isCancelled(this.f70020c.get());
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // l3.c
    public void onComplete() {
        l3.d dVar;
        if (this.f70018a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            dVar = this.f70020c.get();
            if (dVar == this || dVar == SubscriptionHelper.CANCELLED) {
                return;
            }
        } while (!this.f70020c.compareAndSet(dVar, this));
        countDown();
    }

    @Override // l3.c
    public void onError(Throwable th) {
        l3.d dVar;
        do {
            dVar = this.f70020c.get();
            if (dVar != this && dVar != SubscriptionHelper.CANCELLED) {
                this.f70019b = th;
            } else {
                io.reactivex.plugins.a.Y(th);
                return;
            }
        } while (!this.f70020c.compareAndSet(dVar, this));
        countDown();
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f70018a != null) {
            this.f70020c.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f70018a = t3;
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        SubscriptionHelper.setOnce(this.f70020c, dVar, Long.MAX_VALUE);
    }

    @Override // l3.d
    public void request(long j4) {
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
            Throwable th = this.f70019b;
            if (th == null) {
                return this.f70018a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
