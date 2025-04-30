package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes5.dex */
public final class BlockingObservableIterable<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f68133a;

    /* renamed from: b  reason: collision with root package name */
    final int f68134b;

    /* loaded from: classes5.dex */
    static final class BlockingObservableIterator<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, Iterator<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f68135a;

        /* renamed from: b  reason: collision with root package name */
        final Lock f68136b;

        /* renamed from: c  reason: collision with root package name */
        final Condition f68137c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f68138d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f68139e;

        BlockingObservableIterator(int i2) {
            this.f68135a = new io.reactivex.internal.queue.a<>(i2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f68136b = reentrantLock;
            this.f68137c = reentrantLock.newCondition();
        }

        void a() {
            this.f68136b.lock();
            try {
                this.f68137c.signalAll();
            } finally {
                this.f68136b.unlock();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                boolean z3 = this.f68138d;
                boolean isEmpty = this.f68135a.isEmpty();
                if (z3) {
                    Throwable th = this.f68139e;
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
                try {
                    io.reactivex.internal.util.c.b();
                    this.f68136b.lock();
                    while (!this.f68138d && this.f68135a.isEmpty()) {
                        this.f68137c.await();
                    }
                    this.f68136b.unlock();
                } catch (InterruptedException e4) {
                    DisposableHelper.dispose(this);
                    a();
                    throw ExceptionHelper.e(e4);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                return this.f68135a.poll();
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68138d = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68139e = th;
            this.f68138d = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68135a.offer(t3);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public BlockingObservableIterable(io.reactivex.e0<? extends T> e0Var, int i2) {
        this.f68133a = e0Var;
        this.f68134b = i2;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        BlockingObservableIterator blockingObservableIterator = new BlockingObservableIterator(this.f68134b);
        this.f68133a.a(blockingObservableIterator);
        return blockingObservableIterator;
    }
}
