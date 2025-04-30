package io.reactivex.internal.operators.observable;
/* compiled from: ObservableIgnoreElementsCompletable.java */
/* loaded from: classes5.dex */
public final class s0<T> extends io.reactivex.a implements x2.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69265a;

    /* compiled from: ObservableIgnoreElementsCompletable.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f69266a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69267b;

        a(io.reactivex.d dVar) {
            this.f69266a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69267b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69267b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69266a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69266a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69267b = bVar;
            this.f69266a.onSubscribe(this);
        }
    }

    public s0(io.reactivex.e0<T> e0Var) {
        this.f69265a = e0Var;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        this.f69265a.a(new a(dVar));
    }

    @Override // x2.d
    public io.reactivex.z<T> b() {
        return io.reactivex.plugins.a.R(new r0(this.f69265a));
    }
}
