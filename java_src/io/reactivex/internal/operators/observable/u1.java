package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: ObservableToList.java */
/* loaded from: classes5.dex */
public final class u1<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f69307b;

    /* compiled from: ObservableToList.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f69308a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69309b;

        /* renamed from: c  reason: collision with root package name */
        U f69310c;

        a(io.reactivex.g0<? super U> g0Var, U u3) {
            this.f69308a = g0Var;
            this.f69310c = u3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69309b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69309b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u3 = this.f69310c;
            this.f69310c = null;
            this.f69308a.onNext(u3);
            this.f69308a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69310c = null;
            this.f69308a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69310c.add(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69309b, bVar)) {
                this.f69309b = bVar;
                this.f69308a.onSubscribe(this);
            }
        }
    }

    public u1(io.reactivex.e0<T> e0Var, int i2) {
        super(e0Var);
        this.f69307b = Functions.f(i2);
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super U> g0Var) {
        try {
            this.f68961a.a(new a(g0Var, (Collection) io.reactivex.internal.functions.a.g(this.f69307b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }

    public u1(io.reactivex.e0<T> e0Var, Callable<U> callable) {
        super(e0Var);
        this.f69307b = callable;
    }
}
