package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: ObservableToListSingle.java */
/* loaded from: classes5.dex */
public final class v1<T, U extends Collection<? super T>> extends io.reactivex.i0<U> implements x2.d<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69320a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f69321b;

    /* compiled from: ObservableToListSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f69322a;

        /* renamed from: b  reason: collision with root package name */
        U f69323b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69324c;

        a(io.reactivex.l0<? super U> l0Var, U u3) {
            this.f69322a = l0Var;
            this.f69323b = u3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69324c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69324c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u3 = this.f69323b;
            this.f69323b = null;
            this.f69322a.onSuccess(u3);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69323b = null;
            this.f69322a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69323b.add(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69324c, bVar)) {
                this.f69324c = bVar;
                this.f69322a.onSubscribe(this);
            }
        }
    }

    public v1(io.reactivex.e0<T> e0Var, int i2) {
        this.f69320a = e0Var;
        this.f69321b = Functions.f(i2);
    }

    @Override // io.reactivex.i0
    public void Y0(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f69320a.a(new a(l0Var, (Collection) io.reactivex.internal.functions.a.g(this.f69321b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }

    @Override // x2.d
    public io.reactivex.z<U> b() {
        return io.reactivex.plugins.a.R(new u1(this.f69320a, this.f69321b));
    }

    public v1(io.reactivex.e0<T> e0Var, Callable<U> callable) {
        this.f69320a = e0Var;
        this.f69321b = callable;
    }
}
