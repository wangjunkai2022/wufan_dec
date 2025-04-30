package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
/* compiled from: ObservableTimeInterval.java */
/* loaded from: classes5.dex */
public final class t1<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.schedulers.d<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f69289b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f69290c;

    /* compiled from: ObservableTimeInterval.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.schedulers.d<T>> f69291a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f69292b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.h0 f69293c;

        /* renamed from: d  reason: collision with root package name */
        long f69294d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f69295e;

        a(io.reactivex.g0<? super io.reactivex.schedulers.d<T>> g0Var, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f69291a = g0Var;
            this.f69293c = h0Var;
            this.f69292b = timeUnit;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69295e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69295e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69291a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69291a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            long d4 = this.f69293c.d(this.f69292b);
            long j4 = this.f69294d;
            this.f69294d = d4;
            this.f69291a.onNext(new io.reactivex.schedulers.d(t3, d4 - j4, this.f69292b));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69295e, bVar)) {
                this.f69295e = bVar;
                this.f69294d = this.f69293c.d(this.f69292b);
                this.f69291a.onSubscribe(this);
            }
        }
    }

    public t1(io.reactivex.e0<T> e0Var, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f69289b = h0Var;
        this.f69290c = timeUnit;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.schedulers.d<T>> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69290c, this.f69289b));
    }
}
