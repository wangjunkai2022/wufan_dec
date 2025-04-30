package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableTakeWhile.java */
/* loaded from: classes5.dex */
public final class s1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69268b;

    /* compiled from: ObservableTakeWhile.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69269a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69270b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69271c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69272d;

        a(io.reactivex.g0<? super T> g0Var, w2.r<? super T> rVar) {
            this.f69269a = g0Var;
            this.f69270b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69271c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69271c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69272d) {
                return;
            }
            this.f69272d = true;
            this.f69269a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69272d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69272d = true;
            this.f69269a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69272d) {
                return;
            }
            try {
                if (!this.f69270b.test(t3)) {
                    this.f69272d = true;
                    this.f69271c.dispose();
                    this.f69269a.onComplete();
                    return;
                }
                this.f69269a.onNext(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69271c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69271c, bVar)) {
                this.f69271c = bVar;
                this.f69269a.onSubscribe(this);
            }
        }
    }

    public s1(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        super(e0Var);
        this.f69268b = rVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69268b));
    }
}
