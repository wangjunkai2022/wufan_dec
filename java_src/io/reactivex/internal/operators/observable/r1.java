package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableTakeUntilPredicate.java */
/* loaded from: classes5.dex */
public final class r1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69259b;

    /* compiled from: ObservableTakeUntilPredicate.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69260a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69261b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69262c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69263d;

        a(io.reactivex.g0<? super T> g0Var, w2.r<? super T> rVar) {
            this.f69260a = g0Var;
            this.f69261b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69262c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69262c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69263d) {
                return;
            }
            this.f69263d = true;
            this.f69260a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f69263d) {
                this.f69263d = true;
                this.f69260a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69263d) {
                return;
            }
            this.f69260a.onNext(t3);
            try {
                if (this.f69261b.test(t3)) {
                    this.f69263d = true;
                    this.f69262c.dispose();
                    this.f69260a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69262c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69262c, bVar)) {
                this.f69262c = bVar;
                this.f69260a.onSubscribe(this);
            }
        }
    }

    public r1(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        super(e0Var);
        this.f69259b = rVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69259b));
    }
}
