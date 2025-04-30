package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
/* compiled from: CompletableOnErrorComplete.java */
/* loaded from: classes5.dex */
public final class u extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66090a;

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super Throwable> f66091b;

    /* compiled from: CompletableOnErrorComplete.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.d f66092a;

        a(io.reactivex.d dVar) {
            this.f66092a = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66092a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            try {
                if (u.this.f66091b.test(th)) {
                    this.f66092a.onComplete();
                } else {
                    this.f66092a.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66092a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66092a.onSubscribe(bVar);
        }
    }

    public u(io.reactivex.g gVar, w2.r<? super Throwable> rVar) {
        this.f66090a = gVar;
        this.f66091b = rVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66090a.a(new a(dVar));
    }
}
