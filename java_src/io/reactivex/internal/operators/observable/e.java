package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableAll.java */
/* loaded from: classes5.dex */
public final class e<T> extends io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69031b;

    /* compiled from: ObservableAll.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Boolean> f69032a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f69033b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69034c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69035d;

        a(io.reactivex.g0<? super Boolean> g0Var, w2.r<? super T> rVar) {
            this.f69032a = g0Var;
            this.f69033b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69034c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69034c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69035d) {
                return;
            }
            this.f69035d = true;
            this.f69032a.onNext(Boolean.TRUE);
            this.f69032a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69035d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69035d = true;
            this.f69032a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69035d) {
                return;
            }
            try {
                if (this.f69033b.test(t3)) {
                    return;
                }
                this.f69035d = true;
                this.f69034c.dispose();
                this.f69032a.onNext(Boolean.FALSE);
                this.f69032a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69034c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69034c, bVar)) {
                this.f69034c = bVar;
                this.f69032a.onSubscribe(this);
            }
        }
    }

    public e(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        super(e0Var);
        this.f69031b = rVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super Boolean> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69031b));
    }
}
