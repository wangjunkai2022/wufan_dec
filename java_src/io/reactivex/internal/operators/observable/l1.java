package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableSkip.java */
/* loaded from: classes5.dex */
public final class l1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f69134b;

    /* compiled from: ObservableSkip.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69135a;

        /* renamed from: b  reason: collision with root package name */
        long f69136b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69137c;

        a(io.reactivex.g0<? super T> g0Var, long j4) {
            this.f69135a = g0Var;
            this.f69136b = j4;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69137c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69137c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69135a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69135a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            long j4 = this.f69136b;
            if (j4 != 0) {
                this.f69136b = j4 - 1;
            } else {
                this.f69135a.onNext(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69137c, bVar)) {
                this.f69137c = bVar;
                this.f69135a.onSubscribe(this);
            }
        }
    }

    public l1(io.reactivex.e0<T> e0Var, long j4) {
        super(e0Var);
        this.f69134b = j4;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69134b));
    }
}
