package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableAllSingle.java */
/* loaded from: classes5.dex */
public final class f<T> extends io.reactivex.i0<Boolean> implements x2.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69052a;

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69053b;

    /* compiled from: ObservableAllSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f69054a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69055b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69056c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69057d;

        a(io.reactivex.l0<? super Boolean> l0Var, w2.r<? super T> rVar) {
            this.f69054a = l0Var;
            this.f69055b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69056c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69056c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69057d) {
                return;
            }
            this.f69057d = true;
            this.f69054a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69057d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69057d = true;
            this.f69054a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69057d) {
                return;
            }
            try {
                if (this.f69055b.test(t3)) {
                    return;
                }
                this.f69057d = true;
                this.f69056c.dispose();
                this.f69054a.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69056c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69056c, bVar)) {
                this.f69056c = bVar;
                this.f69054a.onSubscribe(this);
            }
        }
    }

    public f(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        this.f69052a = e0Var;
        this.f69053b = rVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super Boolean> l0Var) {
        this.f69052a.a(new a(l0Var, this.f69053b));
    }

    @Override // x2.d
    public io.reactivex.z<Boolean> b() {
        return io.reactivex.plugins.a.R(new e(this.f69052a, this.f69053b));
    }
}
