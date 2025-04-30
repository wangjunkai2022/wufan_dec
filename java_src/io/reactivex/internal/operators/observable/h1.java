package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: ObservableScanSeed.java */
/* loaded from: classes5.dex */
public final class h1<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.c<R, ? super T, R> f69082b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<R> f69083c;

    /* compiled from: ObservableScanSeed.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f69084a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<R, ? super T, R> f69085b;

        /* renamed from: c  reason: collision with root package name */
        R f69086c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69087d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69088e;

        a(io.reactivex.g0<? super R> g0Var, w2.c<R, ? super T, R> cVar, R r3) {
            this.f69084a = g0Var;
            this.f69085b = cVar;
            this.f69086c = r3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69087d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69087d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69088e) {
                return;
            }
            this.f69088e = true;
            this.f69084a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69088e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69088e = true;
            this.f69084a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69088e) {
                return;
            }
            try {
                R r3 = (R) io.reactivex.internal.functions.a.g(this.f69085b.apply(this.f69086c, t3), "The accumulator returned a null value");
                this.f69086c = r3;
                this.f69084a.onNext(r3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69087d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69087d, bVar)) {
                this.f69087d = bVar;
                this.f69084a.onSubscribe(this);
                this.f69084a.onNext((R) this.f69086c);
            }
        }
    }

    public h1(io.reactivex.e0<T> e0Var, Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        super(e0Var);
        this.f69082b = cVar;
        this.f69083c = callable;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super R> g0Var) {
        try {
            this.f68961a.a(new a(g0Var, this.f69082b, io.reactivex.internal.functions.a.g(this.f69083c.call(), "The seed supplied is null")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
