package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class CompletableConcatIterable extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.g> f65972a;

    /* loaded from: classes5.dex */
    static final class ConcatInnerObserver extends AtomicInteger implements io.reactivex.d {
        private static final long serialVersionUID = -7965400327305809232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65973a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends io.reactivex.g> f65974b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f65975c = new SequentialDisposable();

        ConcatInnerObserver(io.reactivex.d dVar, Iterator<? extends io.reactivex.g> it2) {
            this.f65973a = dVar;
            this.f65974b = it2;
        }

        void a() {
            if (!this.f65975c.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends io.reactivex.g> it2 = this.f65974b;
                while (!this.f65975c.isDisposed()) {
                    try {
                        if (!it2.hasNext()) {
                            this.f65973a.onComplete();
                            return;
                        }
                        try {
                            ((io.reactivex.g) io.reactivex.internal.functions.a.g(it2.next(), "The CompletableSource returned is null")).a(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f65973a.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f65973a.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f65973a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f65975c.a(bVar);
        }
    }

    public CompletableConcatIterable(Iterable<? extends io.reactivex.g> iterable) {
        this.f65972a = iterable;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        try {
            ConcatInnerObserver concatInnerObserver = new ConcatInnerObserver(dVar, (Iterator) io.reactivex.internal.functions.a.g(this.f65972a.iterator(), "The iterator returned is null"));
            dVar.onSubscribe(concatInnerObserver.f65975c);
            concatInnerObserver.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, dVar);
        }
    }
}
