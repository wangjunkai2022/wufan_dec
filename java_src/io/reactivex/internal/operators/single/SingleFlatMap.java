package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleFlatMap<T, R> extends i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69628a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends o0<? extends R>> f69629b;

    /* loaded from: classes5.dex */
    static final class SingleFlatMapCallback<T, R> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 3258103020495908596L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super R> f69630a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends o0<? extends R>> f69631b;

        /* loaded from: classes5.dex */
        static final class a<R> implements l0<R> {

            /* renamed from: a  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.b> f69632a;

            /* renamed from: b  reason: collision with root package name */
            final l0<? super R> f69633b;

            a(AtomicReference<io.reactivex.disposables.b> atomicReference, l0<? super R> l0Var) {
                this.f69632a = atomicReference;
                this.f69633b = l0Var;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f69633b.onError(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.replace(this.f69632a, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r3) {
                this.f69633b.onSuccess(r3);
            }
        }

        SingleFlatMapCallback(l0<? super R> l0Var, w2.o<? super T, ? extends o0<? extends R>> oVar) {
            this.f69630a = l0Var;
            this.f69631b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69630a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69630a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                o0 o0Var = (o0) io.reactivex.internal.functions.a.g(this.f69631b.apply(t3), "The single returned by the mapper is null");
                if (isDisposed()) {
                    return;
                }
                o0Var.a(new a(this, this.f69630a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69630a.onError(th);
            }
        }
    }

    public SingleFlatMap(o0<? extends T> o0Var, w2.o<? super T, ? extends o0<? extends R>> oVar) {
        this.f69629b = oVar;
        this.f69628a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super R> l0Var) {
        this.f69628a.a(new SingleFlatMapCallback(l0Var, this.f69629b));
    }
}
