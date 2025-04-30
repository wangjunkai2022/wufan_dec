package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
/* compiled from: ObservableSwitchIfEmpty.java */
/* loaded from: classes5.dex */
public final class o1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f69213b;

    /* compiled from: ObservableSwitchIfEmpty.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69214a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f69215b;

        /* renamed from: d  reason: collision with root package name */
        boolean f69217d = true;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f69216c = new SequentialDisposable();

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<? extends T> e0Var) {
            this.f69214a = g0Var;
            this.f69215b = e0Var;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69217d) {
                this.f69217d = false;
                this.f69215b.a(this);
                return;
            }
            this.f69214a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69214a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69217d) {
                this.f69217d = false;
            }
            this.f69214a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69216c.update(bVar);
        }
    }

    public o1(io.reactivex.e0<T> e0Var, io.reactivex.e0<? extends T> e0Var2) {
        super(e0Var);
        this.f69213b = e0Var2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var, this.f69213b);
        g0Var.onSubscribe(aVar.f69216c);
        this.f68961a.a(aVar);
    }
}
