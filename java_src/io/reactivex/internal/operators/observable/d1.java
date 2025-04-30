package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableReduceMaybe.java */
/* loaded from: classes5.dex */
public final class d1<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69024a;

    /* renamed from: b  reason: collision with root package name */
    final w2.c<T, T, T> f69025b;

    /* compiled from: ObservableReduceMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f69026a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<T, T, T> f69027b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69028c;

        /* renamed from: d  reason: collision with root package name */
        T f69029d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f69030e;

        a(io.reactivex.t<? super T> tVar, w2.c<T, T, T> cVar) {
            this.f69026a = tVar;
            this.f69027b = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69030e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69030e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69028c) {
                return;
            }
            this.f69028c = true;
            T t3 = this.f69029d;
            this.f69029d = null;
            if (t3 != null) {
                this.f69026a.onSuccess(t3);
            } else {
                this.f69026a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69028c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69028c = true;
            this.f69029d = null;
            this.f69026a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69028c) {
                return;
            }
            T t4 = this.f69029d;
            if (t4 == null) {
                this.f69029d = t3;
                return;
            }
            try {
                this.f69029d = (T) io.reactivex.internal.functions.a.g(this.f69027b.apply(t4, t3), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69030e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69030e, bVar)) {
                this.f69030e = bVar;
                this.f69026a.onSubscribe(this);
            }
        }
    }

    public d1(io.reactivex.e0<T> e0Var, w2.c<T, T, T> cVar) {
        this.f69024a = e0Var;
        this.f69025b = cVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f69024a.a(new a(tVar, this.f69025b));
    }
}
