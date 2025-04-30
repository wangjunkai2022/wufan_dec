package io.reactivex.internal.operators.completable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: CompletableDisposeOn.java */
/* loaded from: classes5.dex */
public final class d extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66054a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f66055b;

    /* compiled from: CompletableDisposeOn.java */
    /* loaded from: classes5.dex */
    static final class a implements io.reactivex.d, io.reactivex.disposables.b, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66056a;

        /* renamed from: b  reason: collision with root package name */
        final h0 f66057b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f66058c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f66059d;

        a(io.reactivex.d dVar, h0 h0Var) {
            this.f66056a = dVar;
            this.f66057b = h0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66059d = true;
            this.f66057b.e(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66059d;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f66059d) {
                return;
            }
            this.f66056a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66059d) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f66056a.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f66058c, bVar)) {
                this.f66058c = bVar;
                this.f66056a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f66058c.dispose();
            this.f66058c = DisposableHelper.DISPOSED;
        }
    }

    public d(io.reactivex.g gVar, h0 h0Var) {
        this.f66054a = gVar;
        this.f66055b = h0Var;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66054a.a(new a(dVar, this.f66055b));
    }
}
