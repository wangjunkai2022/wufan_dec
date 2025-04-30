package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: ObservableCollect.java */
/* loaded from: classes5.dex */
public final class n<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f69189b;

    /* renamed from: c  reason: collision with root package name */
    final w2.b<? super U, ? super T> f69190c;

    /* compiled from: ObservableCollect.java */
    /* loaded from: classes5.dex */
    static final class a<T, U> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f69191a;

        /* renamed from: b  reason: collision with root package name */
        final w2.b<? super U, ? super T> f69192b;

        /* renamed from: c  reason: collision with root package name */
        final U f69193c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69194d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69195e;

        a(io.reactivex.g0<? super U> g0Var, U u3, w2.b<? super U, ? super T> bVar) {
            this.f69191a = g0Var;
            this.f69192b = bVar;
            this.f69193c = u3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69194d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69194d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69195e) {
                return;
            }
            this.f69195e = true;
            this.f69191a.onNext((U) this.f69193c);
            this.f69191a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69195e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69195e = true;
            this.f69191a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69195e) {
                return;
            }
            try {
                this.f69192b.a((U) this.f69193c, t3);
            } catch (Throwable th) {
                this.f69194d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69194d, bVar)) {
                this.f69194d = bVar;
                this.f69191a.onSubscribe(this);
            }
        }
    }

    public n(io.reactivex.e0<T> e0Var, Callable<? extends U> callable, w2.b<? super U, ? super T> bVar) {
        super(e0Var);
        this.f69189b = callable;
        this.f69190c = bVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super U> g0Var) {
        try {
            this.f68961a.a(new a(g0Var, io.reactivex.internal.functions.a.g(this.f69189b.call(), "The initialSupplier returned a null value"), this.f69190c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, g0Var);
        }
    }
}
