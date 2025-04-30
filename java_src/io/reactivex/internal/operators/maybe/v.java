package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeIgnoreElementCompletable.java */
/* loaded from: classes5.dex */
public final class v<T> extends io.reactivex.a implements x2.c<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67898a;

    /* compiled from: MaybeIgnoreElementCompletable.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f67899a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67900b;

        a(io.reactivex.d dVar) {
            this.f67899a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67900b.dispose();
            this.f67900b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67900b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67900b = DisposableHelper.DISPOSED;
            this.f67899a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67900b = DisposableHelper.DISPOSED;
            this.f67899a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67900b, bVar)) {
                this.f67900b = bVar;
                this.f67899a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67900b = DisposableHelper.DISPOSED;
            this.f67899a.onComplete();
        }
    }

    public v(io.reactivex.w<T> wVar) {
        this.f67898a = wVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f67898a.a(new a(dVar));
    }

    @Override // x2.c
    public io.reactivex.q<T> c() {
        return io.reactivex.plugins.a.Q(new u(this.f67898a));
    }
}
