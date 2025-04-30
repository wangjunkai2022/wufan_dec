package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableReduceSeedSingle.java */
/* loaded from: classes5.dex */
public final class e1<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69045a;

    /* renamed from: b  reason: collision with root package name */
    final R f69046b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<R, ? super T, R> f69047c;

    /* compiled from: ObservableReduceSeedSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f69048a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<R, ? super T, R> f69049b;

        /* renamed from: c  reason: collision with root package name */
        R f69050c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69051d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.l0<? super R> l0Var, w2.c<R, ? super T, R> cVar, R r3) {
            this.f69048a = l0Var;
            this.f69050c = r3;
            this.f69049b = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69051d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69051d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            R r3 = this.f69050c;
            if (r3 != null) {
                this.f69050c = null;
                this.f69048a.onSuccess(r3);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69050c != null) {
                this.f69050c = null;
                this.f69048a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            R r3 = this.f69050c;
            if (r3 != null) {
                try {
                    this.f69050c = (R) io.reactivex.internal.functions.a.g(this.f69049b.apply(r3, t3), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f69051d.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69051d, bVar)) {
                this.f69051d = bVar;
                this.f69048a.onSubscribe(this);
            }
        }
    }

    public e1(io.reactivex.e0<T> e0Var, R r3, w2.c<R, ? super T, R> cVar) {
        this.f69045a = e0Var;
        this.f69046b = r3;
        this.f69047c = cVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super R> l0Var) {
        this.f69045a.a(new a(l0Var, this.f69047c, this.f69046b));
    }
}
