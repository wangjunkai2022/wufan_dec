package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: CompletableDetach.java */
/* loaded from: classes5.dex */
public final class c extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66051a;

    /* compiled from: CompletableDetach.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.d, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.d f66052a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f66053b;

        a(io.reactivex.d dVar) {
            this.f66052a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66052a = null;
            this.f66053b.dispose();
            this.f66053b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66053b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66053b = DisposableHelper.DISPOSED;
            io.reactivex.d dVar = this.f66052a;
            if (dVar != null) {
                this.f66052a = null;
                dVar.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66053b = DisposableHelper.DISPOSED;
            io.reactivex.d dVar = this.f66052a;
            if (dVar != null) {
                this.f66052a = null;
                dVar.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f66053b, bVar)) {
                this.f66053b = bVar;
                this.f66052a.onSubscribe(this);
            }
        }
    }

    public c(io.reactivex.g gVar) {
        this.f66051a = gVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66051a.a(new a(dVar));
    }
}
