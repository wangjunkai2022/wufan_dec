package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableSkipWhile.java */
/* loaded from: classes5.dex */
public final class n1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69199b;

    /* compiled from: ObservableSkipWhile.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69200a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69201b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69202c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69203d;

        a(io.reactivex.g0<? super T> g0Var, w2.r<? super T> rVar) {
            this.f69200a = g0Var;
            this.f69201b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69202c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69202c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69200a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69200a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69203d) {
                this.f69200a.onNext(t3);
                return;
            }
            try {
                if (this.f69201b.test(t3)) {
                    return;
                }
                this.f69203d = true;
                this.f69200a.onNext(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69202c.dispose();
                this.f69200a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69202c, bVar)) {
                this.f69202c = bVar;
                this.f69200a.onSubscribe(this);
            }
        }
    }

    public n1(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        super(e0Var);
        this.f69199b = rVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69199b));
    }
}
