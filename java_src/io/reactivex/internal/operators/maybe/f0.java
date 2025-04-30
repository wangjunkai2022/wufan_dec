package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.NoSuchElementException;
/* compiled from: MaybeToSingle.java */
/* loaded from: classes5.dex */
public final class f0<T> extends i0<T> implements x2.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67850a;

    /* renamed from: b  reason: collision with root package name */
    final T f67851b;

    /* compiled from: MaybeToSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f67852a;

        /* renamed from: b  reason: collision with root package name */
        final T f67853b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67854c;

        a(l0<? super T> l0Var, T t3) {
            this.f67852a = l0Var;
            this.f67853b = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67854c.dispose();
            this.f67854c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67854c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67854c = DisposableHelper.DISPOSED;
            T t3 = this.f67853b;
            if (t3 != null) {
                this.f67852a.onSuccess(t3);
            } else {
                this.f67852a.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67854c = DisposableHelper.DISPOSED;
            this.f67852a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67854c, bVar)) {
                this.f67854c = bVar;
                this.f67852a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67854c = DisposableHelper.DISPOSED;
            this.f67852a.onSuccess(t3);
        }
    }

    public f0(io.reactivex.w<T> wVar, T t3) {
        this.f67850a = wVar;
        this.f67851b = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f67850a.a(new a(l0Var, this.f67851b));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67850a;
    }
}
