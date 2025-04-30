package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableSingleMaybe.java */
/* loaded from: classes5.dex */
public final class j1<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69103a;

    /* compiled from: ObservableSingleMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f69104a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69105b;

        /* renamed from: c  reason: collision with root package name */
        T f69106c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69107d;

        a(io.reactivex.t<? super T> tVar) {
            this.f69104a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69105b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69105b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69107d) {
                return;
            }
            this.f69107d = true;
            T t3 = this.f69106c;
            this.f69106c = null;
            if (t3 == null) {
                this.f69104a.onComplete();
            } else {
                this.f69104a.onSuccess(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69107d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69107d = true;
            this.f69104a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69107d) {
                return;
            }
            if (this.f69106c != null) {
                this.f69107d = true;
                this.f69105b.dispose();
                this.f69104a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f69106c = t3;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69105b, bVar)) {
                this.f69105b = bVar;
                this.f69104a.onSubscribe(this);
            }
        }
    }

    public j1(io.reactivex.e0<T> e0Var) {
        this.f69103a = e0Var;
    }

    @Override // io.reactivex.q
    public void o1(io.reactivex.t<? super T> tVar) {
        this.f69103a.a(new a(tVar));
    }
}
