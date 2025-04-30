package io.reactivex.internal.operators.completable;

import io.reactivex.e0;
import io.reactivex.g0;
/* compiled from: CompletableFromObservable.java */
/* loaded from: classes5.dex */
public final class k<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final e0<T> f66069a;

    /* compiled from: CompletableFromObservable.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66070a;

        a(io.reactivex.d dVar) {
            this.f66070a = dVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f66070a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f66070a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66070a.onSubscribe(bVar);
        }
    }

    public k(e0<T> e0Var) {
        this.f66069a = e0Var;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66069a.a(new a(dVar));
    }
}
