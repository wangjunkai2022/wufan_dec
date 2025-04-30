package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: ObservableCollectSingle.java */
/* loaded from: classes5.dex */
public final class o<T, U> extends io.reactivex.i0<U> implements x2.d<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69204a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f69205b;

    /* renamed from: c  reason: collision with root package name */
    final w2.b<? super U, ? super T> f69206c;

    /* compiled from: ObservableCollectSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T, U> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f69207a;

        /* renamed from: b  reason: collision with root package name */
        final w2.b<? super U, ? super T> f69208b;

        /* renamed from: c  reason: collision with root package name */
        final U f69209c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69210d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69211e;

        a(io.reactivex.l0<? super U> l0Var, U u3, w2.b<? super U, ? super T> bVar) {
            this.f69207a = l0Var;
            this.f69208b = bVar;
            this.f69209c = u3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69210d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69210d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69211e) {
                return;
            }
            this.f69211e = true;
            this.f69207a.onSuccess((U) this.f69209c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69211e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69211e = true;
            this.f69207a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69211e) {
                return;
            }
            try {
                this.f69208b.a((U) this.f69209c, t3);
            } catch (Throwable th) {
                this.f69210d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69210d, bVar)) {
                this.f69210d = bVar;
                this.f69207a.onSubscribe(this);
            }
        }
    }

    public o(io.reactivex.e0<T> e0Var, Callable<? extends U> callable, w2.b<? super U, ? super T> bVar) {
        this.f69204a = e0Var;
        this.f69205b = callable;
        this.f69206c = bVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f69204a.a(new a(l0Var, io.reactivex.internal.functions.a.g(this.f69205b.call(), "The initialSupplier returned a null value"), this.f69206c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, l0Var);
        }
    }

    @Override // x2.d
    public io.reactivex.z<U> b() {
        return io.reactivex.plugins.a.R(new n(this.f69204a, this.f69205b, this.f69206c));
    }
}
