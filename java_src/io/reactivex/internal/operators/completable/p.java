package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: CompletableHide.java */
/* loaded from: classes5.dex */
public final class p extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66078a;

    /* compiled from: CompletableHide.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.d, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66079a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f66080b;

        a(io.reactivex.d dVar) {
            this.f66079a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66080b.dispose();
            this.f66080b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66080b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66079a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66079a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f66080b, bVar)) {
                this.f66080b = bVar;
                this.f66079a.onSubscribe(this);
            }
        }
    }

    public p(io.reactivex.g gVar) {
        this.f66078a = gVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66078a.a(new a(dVar));
    }
}
