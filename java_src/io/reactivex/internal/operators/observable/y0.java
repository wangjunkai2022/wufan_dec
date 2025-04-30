package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;
/* compiled from: ObservableMapNotification.java */
/* loaded from: classes5.dex */
public final class y0<T, R> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.e0<? extends R>> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f69396b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> f69397c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<? extends R>> f69398d;

    /* compiled from: ObservableMapNotification.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.e0<? extends R>> f69399a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f69400b;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> f69401c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<? extends io.reactivex.e0<? extends R>> f69402d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f69403e;

        a(io.reactivex.g0<? super io.reactivex.e0<? extends R>> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, w2.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> oVar2, Callable<? extends io.reactivex.e0<? extends R>> callable) {
            this.f69399a = g0Var;
            this.f69400b = oVar;
            this.f69401c = oVar2;
            this.f69402d = callable;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69403e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69403e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            try {
                this.f69399a.onNext((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69402d.call(), "The onComplete ObservableSource returned is null"));
                this.f69399a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69399a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                this.f69399a.onNext((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69401c.apply(th), "The onError ObservableSource returned is null"));
                this.f69399a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f69399a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            try {
                this.f69399a.onNext((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69400b.apply(t3), "The onNext ObservableSource returned is null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69399a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69403e, bVar)) {
                this.f69403e = bVar;
                this.f69399a.onSubscribe(this);
            }
        }
    }

    public y0(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, w2.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> oVar2, Callable<? extends io.reactivex.e0<? extends R>> callable) {
        super(e0Var);
        this.f69396b = oVar;
        this.f69397c = oVar2;
        this.f69398d = callable;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.e0<? extends R>> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69396b, this.f69397c, this.f69398d));
    }
}
