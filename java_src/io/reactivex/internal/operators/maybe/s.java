package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: MaybeFromSingle.java */
/* loaded from: classes5.dex */
public final class s<T> extends io.reactivex.q<T> implements x2.i<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f67891a;

    /* compiled from: MaybeFromSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67892a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67893b;

        a(io.reactivex.t<? super T> tVar) {
            this.f67892a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67893b.dispose();
            this.f67893b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67893b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f67893b = DisposableHelper.DISPOSED;
            this.f67892a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67893b, bVar)) {
                this.f67893b = bVar;
                this.f67892a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f67893b = DisposableHelper.DISPOSED;
            this.f67892a.onSuccess(t3);
        }
    }

    public s(o0<T> o0Var) {
        this.f67891a = o0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67891a.a(new a(tVar));
    }

    @Override // x2.i
    public o0<T> source() {
        return this.f67891a;
    }
}
