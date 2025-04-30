package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableFlattenIterable.java */
/* loaded from: classes5.dex */
public final class i0<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends Iterable<? extends R>> f69093b;

    /* compiled from: ObservableFlattenIterable.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f69094a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends Iterable<? extends R>> f69095b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69096c;

        a(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f69094a = g0Var;
            this.f69095b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69096c.dispose();
            this.f69096c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69096c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.disposables.b bVar = this.f69096c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper) {
                return;
            }
            this.f69096c = disposableHelper;
            this.f69094a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.disposables.b bVar = this.f69096c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69096c = disposableHelper;
            this.f69094a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69096c == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                io.reactivex.g0<? super R> g0Var = this.f69094a;
                for (R r3 : this.f69095b.apply(t3)) {
                    try {
                        try {
                            g0Var.onNext((Object) io.reactivex.internal.functions.a.g(r3, "The iterator returned a null value"));
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f69096c.dispose();
                            onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f69096c.dispose();
                        onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f69096c.dispose();
                onError(th3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69096c, bVar)) {
                this.f69096c = bVar;
                this.f69094a.onSubscribe(this);
            }
        }
    }

    public i0(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
        super(e0Var);
        this.f69093b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69093b));
    }
}
