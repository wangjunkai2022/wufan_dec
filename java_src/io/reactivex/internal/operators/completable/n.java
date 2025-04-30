package io.reactivex.internal.operators.completable;

import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: CompletableFromSingle.java */
/* loaded from: classes5.dex */
public final class n<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f66075a;

    /* compiled from: CompletableFromSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66076a;

        a(io.reactivex.d dVar) {
            this.f66076a = dVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f66076a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66076a.onSubscribe(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f66076a.onComplete();
        }
    }

    public n(o0<T> o0Var) {
        this.f66075a = o0Var;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66075a.a(new a(dVar));
    }
}
