package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes5.dex */
public final class BlockingFlowableIterable<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f66126a;

    /* renamed from: b  reason: collision with root package name */
    final int f66127b;

    /* loaded from: classes5.dex */
    static final class BlockingFlowableIterator<T> extends AtomicReference<l3.d> implements io.reactivex.o<T>, Iterator<T>, Runnable, io.reactivex.disposables.b {
        private static final long serialVersionUID = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final SpscArrayQueue<T> f66128a;

        /* renamed from: b  reason: collision with root package name */
        final long f66129b;

        /* renamed from: c  reason: collision with root package name */
        final long f66130c;

        /* renamed from: d  reason: collision with root package name */
        final Lock f66131d;

        /* renamed from: e  reason: collision with root package name */
        final Condition f66132e;

        /* renamed from: f  reason: collision with root package name */
        long f66133f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f66134g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f66135h;

        BlockingFlowableIterator(int i2) {
            this.f66128a = new SpscArrayQueue<>(i2);
            this.f66129b = i2;
            this.f66130c = i2 - (i2 >> 2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f66131d = reentrantLock;
            this.f66132e = reentrantLock.newCondition();
        }

        void a() {
            this.f66131d.lock();
            try {
                this.f66132e.signalAll();
            } finally {
                this.f66131d.unlock();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                boolean z3 = this.f66134g;
                boolean isEmpty = this.f66128a.isEmpty();
                if (z3) {
                    Throwable th = this.f66135h;
                    if (th != null) {
                        throw ExceptionHelper.e(th);
                    }
                    if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                io.reactivex.internal.util.c.b();
                this.f66131d.lock();
                while (!this.f66134g && this.f66128a.isEmpty()) {
                    try {
                        try {
                            this.f66132e.await();
                        } catch (InterruptedException e4) {
                            run();
                            throw ExceptionHelper.e(e4);
                        }
                    } finally {
                        this.f66131d.unlock();
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T poll = this.f66128a.poll();
                long j4 = this.f66133f + 1;
                if (j4 == this.f66130c) {
                    this.f66133f = 0L;
                    get().request(j4);
                } else {
                    this.f66133f = j4;
                }
                return poll;
            }
            throw new NoSuchElementException();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66134g = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66135h = th;
            this.f66134g = true;
            a();
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (!this.f66128a.offer(t3)) {
                SubscriptionHelper.cancel(this);
                onError(new MissingBackpressureException("Queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, this.f66129b);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        @Override // java.lang.Runnable
        public void run() {
            SubscriptionHelper.cancel(this);
            a();
        }
    }

    public BlockingFlowableIterable(io.reactivex.j<T> jVar, int i2) {
        this.f66126a = jVar;
        this.f66127b = i2;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        BlockingFlowableIterator blockingFlowableIterator = new BlockingFlowableIterator(this.f66127b);
        this.f66126a.g6(blockingFlowableIterator);
        return blockingFlowableIterator;
    }
}
