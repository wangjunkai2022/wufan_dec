package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* compiled from: ObservableLastSingle.java */
/* loaded from: classes5.dex */
public final class v0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69314a;

    /* renamed from: b  reason: collision with root package name */
    final T f69315b;

    /* compiled from: ObservableLastSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f69316a;

        /* renamed from: b  reason: collision with root package name */
        final T f69317b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69318c;

        /* renamed from: d  reason: collision with root package name */
        T f69319d;

        a(io.reactivex.l0<? super T> l0Var, T t3) {
            this.f69316a = l0Var;
            this.f69317b = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69318c.dispose();
            this.f69318c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69318c == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69318c = DisposableHelper.DISPOSED;
            T t3 = this.f69319d;
            if (t3 != null) {
                this.f69319d = null;
                this.f69316a.onSuccess(t3);
                return;
            }
            T t4 = this.f69317b;
            if (t4 != null) {
                this.f69316a.onSuccess(t4);
            } else {
                this.f69316a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69318c = DisposableHelper.DISPOSED;
            this.f69319d = null;
            this.f69316a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69319d = t3;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69318c, bVar)) {
                this.f69318c = bVar;
                this.f69316a.onSubscribe(this);
            }
        }
    }

    public v0(io.reactivex.e0<T> e0Var, T t3) {
        this.f69314a = e0Var;
        this.f69315b = t3;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super T> l0Var) {
        this.f69314a.a(new a(l0Var, this.f69315b));
    }
}
