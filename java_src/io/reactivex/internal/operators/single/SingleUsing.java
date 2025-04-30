package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleUsing<T, U> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<U> f69712a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super U, ? extends o0<? extends T>> f69713b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super U> f69714c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f69715d;

    /* loaded from: classes5.dex */
    static final class UsingSingleObserver<T, U> extends AtomicReference<Object> implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5331524057054083935L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69716a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super U> f69717b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f69718c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69719d;

        UsingSingleObserver(l0<? super T> l0Var, U u3, boolean z3, w2.g<? super U> gVar) {
            super(u3);
            this.f69716a = l0Var;
            this.f69718c = z3;
            this.f69717b = gVar;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f69717b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69719d.dispose();
            this.f69719d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69719d.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69719d = DisposableHelper.DISPOSED;
            if (this.f69718c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f69717b.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    th = new CompositeException(th, th2);
                }
            }
            this.f69716a.onError(th);
            if (this.f69718c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69719d, bVar)) {
                this.f69719d = bVar;
                this.f69716a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69719d = DisposableHelper.DISPOSED;
            if (this.f69718c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f69717b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f69716a.onError(th);
                    return;
                }
            }
            this.f69716a.onSuccess(t3);
            if (this.f69718c) {
                return;
            }
            a();
        }
    }

    public SingleUsing(Callable<U> callable, w2.o<? super U, ? extends o0<? extends T>> oVar, w2.g<? super U> gVar, boolean z3) {
        this.f69712a = callable;
        this.f69713b = oVar;
        this.f69714c = gVar;
        this.f69715d = z3;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        try {
            U call = this.f69712a.call();
            try {
                ((o0) io.reactivex.internal.functions.a.g(this.f69713b.apply(call), "The singleFunction returned a null SingleSource")).a(new UsingSingleObserver(l0Var, call, this.f69715d, this.f69714c));
            } catch (Throwable th) {
                th = th;
                io.reactivex.exceptions.a.b(th);
                if (this.f69715d) {
                    try {
                        this.f69714c.accept(call);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        th = new CompositeException(th, th2);
                    }
                }
                EmptyDisposable.error(th, l0Var);
                if (this.f69715d) {
                    return;
                }
                try {
                    this.f69714c.accept(call);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, l0Var);
        }
    }
}
