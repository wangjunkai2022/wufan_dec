package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
/* compiled from: ObservableOnErrorNext.java */
/* loaded from: classes5.dex */
public final class b1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> f68980b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68981c;

    /* compiled from: ObservableOnErrorNext.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68982a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> f68983b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68984c;

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f68985d = new SequentialDisposable();

        /* renamed from: e  reason: collision with root package name */
        boolean f68986e;

        /* renamed from: f  reason: collision with root package name */
        boolean f68987f;

        a(io.reactivex.g0<? super T> g0Var, w2.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> oVar, boolean z3) {
            this.f68982a = g0Var;
            this.f68983b = oVar;
            this.f68984c = z3;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68987f) {
                return;
            }
            this.f68987f = true;
            this.f68986e = true;
            this.f68982a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68986e) {
                if (this.f68987f) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                } else {
                    this.f68982a.onError(th);
                    return;
                }
            }
            this.f68986e = true;
            if (this.f68984c && !(th instanceof Exception)) {
                this.f68982a.onError(th);
                return;
            }
            try {
                io.reactivex.e0<? extends T> apply = this.f68983b.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("Observable is null");
                    nullPointerException.initCause(th);
                    this.f68982a.onError(nullPointerException);
                    return;
                }
                apply.a(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f68982a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68987f) {
                return;
            }
            this.f68982a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68985d.a(bVar);
        }
    }

    public b1(io.reactivex.e0<T> e0Var, w2.o<? super Throwable, ? extends io.reactivex.e0<? extends T>> oVar, boolean z3) {
        super(e0Var);
        this.f68980b = oVar;
        this.f68981c = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var, this.f68980b, this.f68981c);
        g0Var.onSubscribe(aVar.f68985d);
        this.f68961a.a(aVar);
    }
}
