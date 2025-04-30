package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableCountSingle.java */
/* loaded from: classes5.dex */
public final class q<T> extends io.reactivex.i0<Long> implements x2.d<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69236a;

    /* compiled from: ObservableCountSingle.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.g0<Object>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Long> f69237a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69238b;

        /* renamed from: c  reason: collision with root package name */
        long f69239c;

        a(io.reactivex.l0<? super Long> l0Var) {
            this.f69237a = l0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69238b.dispose();
            this.f69238b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69238b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69238b = DisposableHelper.DISPOSED;
            this.f69237a.onSuccess(Long.valueOf(this.f69239c));
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69238b = DisposableHelper.DISPOSED;
            this.f69237a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f69239c++;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69238b, bVar)) {
                this.f69238b = bVar;
                this.f69237a.onSubscribe(this);
            }
        }
    }

    public q(io.reactivex.e0<T> e0Var) {
        this.f69236a = e0Var;
    }

    @Override // io.reactivex.i0
    public void Y0(io.reactivex.l0<? super Long> l0Var) {
        this.f69236a.a(new a(l0Var));
    }

    @Override // x2.d
    public io.reactivex.z<Long> b() {
        return io.reactivex.plugins.a.R(new p(this.f69236a));
    }
}
