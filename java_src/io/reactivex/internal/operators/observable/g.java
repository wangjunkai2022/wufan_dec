package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableAny.java */
/* loaded from: classes5.dex */
public final class g<T> extends io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69062b;

    /* compiled from: ObservableAny.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Boolean> f69063a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69064b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69065c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69066d;

        a(io.reactivex.g0<? super Boolean> g0Var, w2.r<? super T> rVar) {
            this.f69063a = g0Var;
            this.f69064b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69065c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69065c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69066d) {
                return;
            }
            this.f69066d = true;
            this.f69063a.onNext(Boolean.FALSE);
            this.f69063a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69066d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69066d = true;
            this.f69063a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69066d) {
                return;
            }
            try {
                if (this.f69064b.test(t3)) {
                    this.f69066d = true;
                    this.f69065c.dispose();
                    this.f69063a.onNext(Boolean.TRUE);
                    this.f69063a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69065c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69065c, bVar)) {
                this.f69065c = bVar;
                this.f69063a.onSubscribe(this);
            }
        }
    }

    public g(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        super(e0Var);
        this.f69062b = rVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super Boolean> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69062b));
    }
}
