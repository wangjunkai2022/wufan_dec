package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: BlockingFlowableLatest.java */
/* loaded from: classes5.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends T> f67305a;

    /* compiled from: BlockingFlowableLatest.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.subscribers.b<io.reactivex.y<T>> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        final Semaphore f67306b = new Semaphore(0);

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.y<T>> f67307c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.y<T> f67308d;

        a() {
        }

        @Override // l3.c
        /* renamed from: d */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f67307c.getAndSet(yVar) == null) {
                this.f67306b.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.y<T> yVar = this.f67308d;
            if (yVar != null && yVar.g()) {
                throw ExceptionHelper.e(this.f67308d.d());
            }
            io.reactivex.y<T> yVar2 = this.f67308d;
            if ((yVar2 == null || yVar2.h()) && this.f67308d == null) {
                try {
                    io.reactivex.internal.util.c.b();
                    this.f67306b.acquire();
                    io.reactivex.y<T> andSet = this.f67307c.getAndSet(null);
                    this.f67308d = andSet;
                    if (andSet.g()) {
                        throw ExceptionHelper.e(andSet.d());
                    }
                } catch (InterruptedException e4) {
                    dispose();
                    this.f67308d = io.reactivex.y.b(e4);
                    throw ExceptionHelper.e(e4);
                }
            }
            return this.f67308d.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext() && this.f67308d.h()) {
                T e4 = this.f67308d.e();
                this.f67308d = null;
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // l3.c
        public void onComplete() {
        }

        @Override // l3.c
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public b(l3.b<? extends T> bVar) {
        this.f67305a = bVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.j.V2(this.f67305a).I3().g6(aVar);
        return aVar;
    }
}
