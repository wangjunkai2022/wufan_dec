package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableRetryPredicate<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super Throwable> f68637b;

    /* renamed from: c  reason: collision with root package name */
    final long f68638c;

    /* loaded from: classes5.dex */
    static final class RepeatObserver<T> extends AtomicInteger implements io.reactivex.g0<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68639a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f68640b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68641c;

        /* renamed from: d  reason: collision with root package name */
        final w2.r<? super Throwable> f68642d;

        /* renamed from: e  reason: collision with root package name */
        long f68643e;

        RepeatObserver(io.reactivex.g0<? super T> g0Var, long j4, w2.r<? super Throwable> rVar, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f68639a = g0Var;
            this.f68640b = sequentialDisposable;
            this.f68641c = e0Var;
            this.f68642d = rVar;
            this.f68643e = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f68640b.isDisposed()) {
                    this.f68641c.a(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68639a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            long j4 = this.f68643e;
            if (j4 != Long.MAX_VALUE) {
                this.f68643e = j4 - 1;
            }
            if (j4 == 0) {
                this.f68639a.onError(th);
                return;
            }
            try {
                if (!this.f68642d.test(th)) {
                    this.f68639a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f68639a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68639a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68640b.update(bVar);
        }
    }

    public ObservableRetryPredicate(io.reactivex.z<T> zVar, long j4, w2.r<? super Throwable> rVar) {
        super(zVar);
        this.f68637b = rVar;
        this.f68638c = j4;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        new RepeatObserver(g0Var, this.f68638c, this.f68637b, sequentialDisposable, this.f68961a).a();
    }
}
