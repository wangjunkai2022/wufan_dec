package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableCount.java */
/* loaded from: classes5.dex */
public final class p<T> extends io.reactivex.internal.operators.observable.a<T, Long> {

    /* compiled from: ObservableCount.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.g0<Object>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f69218a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69219b;

        /* renamed from: c  reason: collision with root package name */
        long f69220c;

        a(io.reactivex.g0<? super Long> g0Var) {
            this.f69218a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69219b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69219b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69218a.onNext(Long.valueOf(this.f69220c));
            this.f69218a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69218a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f69220c++;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69219b, bVar)) {
                this.f69219b = bVar;
                this.f69218a.onSubscribe(this);
            }
        }
    }

    public p(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super Long> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
