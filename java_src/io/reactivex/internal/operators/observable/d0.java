package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableElementAtMaybe.java */
/* loaded from: classes5.dex */
public final class d0<T> extends io.reactivex.q<T> implements x2.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69017a;

    /* renamed from: b  reason: collision with root package name */
    final long f69018b;

    /* compiled from: ObservableElementAtMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f69019a;

        /* renamed from: b  reason: collision with root package name */
        final long f69020b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69021c;

        /* renamed from: d  reason: collision with root package name */
        long f69022d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69023e;

        a(io.reactivex.t<? super T> tVar, long j4) {
            this.f69019a = tVar;
            this.f69020b = j4;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69021c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69021c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69023e) {
                return;
            }
            this.f69023e = true;
            this.f69019a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69023e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69023e = true;
            this.f69019a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69023e) {
                return;
            }
            long j4 = this.f69022d;
            if (j4 == this.f69020b) {
                this.f69023e = true;
                this.f69021c.dispose();
                this.f69019a.onSuccess(t3);
                return;
            }
            this.f69022d = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69021c, bVar)) {
                this.f69021c = bVar;
                this.f69019a.onSubscribe(this);
            }
        }
    }

    public d0(io.reactivex.e0<T> e0Var, long j4) {
        this.f69017a = e0Var;
        this.f69018b = j4;
    }

    @Override // x2.d
    public io.reactivex.z<T> b() {
        return io.reactivex.plugins.a.R(new c0(this.f69017a, this.f69018b, null, false));
    }

    @Override // io.reactivex.q
    public void o1(io.reactivex.t<? super T> tVar) {
        this.f69017a.a(new a(tVar, this.f69018b));
    }
}
