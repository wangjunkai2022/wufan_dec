package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
/* compiled from: CompletableDoOnEvent.java */
/* loaded from: classes5.dex */
public final class e extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66060a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f66061b;

    /* compiled from: CompletableDoOnEvent.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.d f66062a;

        a(io.reactivex.d dVar) {
            this.f66062a = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            try {
                e.this.f66061b.accept(null);
                this.f66062a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66062a.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            try {
                e.this.f66061b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f66062a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66062a.onSubscribe(bVar);
        }
    }

    public e(io.reactivex.g gVar, w2.g<? super Throwable> gVar2) {
        this.f66060a = gVar;
        this.f66061b = gVar2;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66060a.a(new a(dVar));
    }
}
