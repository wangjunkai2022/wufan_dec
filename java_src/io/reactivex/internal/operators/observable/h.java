package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableAnySingle.java */
/* loaded from: classes5.dex */
public final class h<T> extends io.reactivex.i0<Boolean> implements x2.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69074a;

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69075b;

    /* compiled from: ObservableAnySingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f69076a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69077b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69078c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69079d;

        a(io.reactivex.l0<? super Boolean> l0Var, w2.r<? super T> rVar) {
            this.f69076a = l0Var;
            this.f69077b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69078c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69078c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69079d) {
                return;
            }
            this.f69079d = true;
            this.f69076a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69079d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69079d = true;
            this.f69076a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69079d) {
                return;
            }
            try {
                if (this.f69077b.test(t3)) {
                    this.f69079d = true;
                    this.f69078c.dispose();
                    this.f69076a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69078c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69078c, bVar)) {
                this.f69078c = bVar;
                this.f69076a.onSubscribe(this);
            }
        }
    }

    public h(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        this.f69074a = e0Var;
        this.f69075b = rVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super Boolean> l0Var) {
        this.f69074a.a(new a(l0Var, this.f69075b));
    }

    @Override // x2.d
    public io.reactivex.z<Boolean> b() {
        return io.reactivex.plugins.a.R(new g(this.f69074a, this.f69075b));
    }
}
