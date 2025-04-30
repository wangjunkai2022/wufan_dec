package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableDematerialize.java */
/* loaded from: classes5.dex */
public final class v<T> extends io.reactivex.internal.operators.observable.a<io.reactivex.y<T>, T> {

    /* compiled from: ObservableDematerialize.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<io.reactivex.y<T>>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69311a;

        /* renamed from: b  reason: collision with root package name */
        boolean f69312b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69313c;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f69311a = g0Var;
        }

        @Override // io.reactivex.g0
        /* renamed from: a */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f69312b) {
                if (yVar.g()) {
                    io.reactivex.plugins.a.Y(yVar.d());
                }
            } else if (yVar.g()) {
                this.f69313c.dispose();
                onError(yVar.d());
            } else if (yVar.f()) {
                this.f69313c.dispose();
                onComplete();
            } else {
                this.f69311a.onNext(yVar.e());
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69313c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69313c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69312b) {
                return;
            }
            this.f69312b = true;
            this.f69311a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69312b) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69312b = true;
            this.f69311a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69313c, bVar)) {
                this.f69313c = bVar;
                this.f69311a.onSubscribe(this);
            }
        }
    }

    public v(io.reactivex.e0<io.reactivex.y<T>> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
