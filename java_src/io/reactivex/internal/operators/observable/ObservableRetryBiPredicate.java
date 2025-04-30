package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableRetryBiPredicate<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.d<? super Integer, ? super Throwable> f68631b;

    /* loaded from: classes5.dex */
    static final class RetryBiObserver<T> extends AtomicInteger implements io.reactivex.g0<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68632a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f68633b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68634c;

        /* renamed from: d  reason: collision with root package name */
        final w2.d<? super Integer, ? super Throwable> f68635d;

        /* renamed from: e  reason: collision with root package name */
        int f68636e;

        RetryBiObserver(io.reactivex.g0<? super T> g0Var, w2.d<? super Integer, ? super Throwable> dVar, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f68632a = g0Var;
            this.f68633b = sequentialDisposable;
            this.f68634c = e0Var;
            this.f68635d = dVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f68633b.isDisposed()) {
                    this.f68634c.a(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68632a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                w2.d<? super Integer, ? super Throwable> dVar = this.f68635d;
                int i2 = this.f68636e + 1;
                this.f68636e = i2;
                if (!dVar.a(Integer.valueOf(i2), th)) {
                    this.f68632a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f68632a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68632a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68633b.update(bVar);
        }
    }

    public ObservableRetryBiPredicate(io.reactivex.z<T> zVar, w2.d<? super Integer, ? super Throwable> dVar) {
        super(zVar);
        this.f68631b = dVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        new RetryBiObserver(g0Var, this.f68631b, sequentialDisposable, this.f68961a).a();
    }
}
