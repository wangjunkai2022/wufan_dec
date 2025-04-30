package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableOnErrorReturn.java */
/* loaded from: classes5.dex */
public final class c1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends T> f69003b;

    /* compiled from: ObservableOnErrorReturn.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69004a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends T> f69005b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69006c;

        a(io.reactivex.g0<? super T> g0Var, w2.o<? super Throwable, ? extends T> oVar) {
            this.f69004a = g0Var;
            this.f69005b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69006c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69006c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69004a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                T apply = this.f69005b.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.f69004a.onError(nullPointerException);
                    return;
                }
                this.f69004a.onNext(apply);
                this.f69004a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f69004a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69004a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69006c, bVar)) {
                this.f69006c = bVar;
                this.f69004a.onSubscribe(this);
            }
        }
    }

    public c1(io.reactivex.e0<T> e0Var, w2.o<? super Throwable, ? extends T> oVar) {
        super(e0Var);
        this.f69003b = oVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69003b));
    }
}
