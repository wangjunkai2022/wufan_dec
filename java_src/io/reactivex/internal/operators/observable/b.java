package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: BlockingObservableLatest.java */
/* loaded from: classes5.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f68974a;

    /* compiled from: BlockingObservableLatest.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.observers.d<io.reactivex.y<T>> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.y<T> f68975b;

        /* renamed from: c  reason: collision with root package name */
        final Semaphore f68976c = new Semaphore(0);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.y<T>> f68977d = new AtomicReference<>();

        a() {
        }

        @Override // io.reactivex.g0
        /* renamed from: b */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f68977d.getAndSet(yVar) == null) {
                this.f68976c.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.y<T> yVar = this.f68975b;
            if (yVar != null && yVar.g()) {
                throw ExceptionHelper.e(this.f68975b.d());
            }
            if (this.f68975b == null) {
                try {
                    io.reactivex.internal.util.c.b();
                    this.f68976c.acquire();
                    io.reactivex.y<T> andSet = this.f68977d.getAndSet(null);
                    this.f68975b = andSet;
                    if (andSet.g()) {
                        throw ExceptionHelper.e(andSet.d());
                    }
                } catch (InterruptedException e4) {
                    dispose();
                    this.f68975b = io.reactivex.y.b(e4);
                    throw ExceptionHelper.e(e4);
                }
            }
            return this.f68975b.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T e4 = this.f68975b.e();
                this.f68975b = null;
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public b(io.reactivex.e0<T> e0Var) {
        this.f68974a = e0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.z.M7(this.f68974a).y3().a(aVar);
        return aVar;
    }
}
