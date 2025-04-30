package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeUsing<T, D> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f67795a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super D, ? extends io.reactivex.w<? extends T>> f67796b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super D> f67797c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f67798d;

    /* loaded from: classes5.dex */
    static final class UsingObserver<T, D> extends AtomicReference<Object> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -674404550052917487L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67799a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super D> f67800b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f67801c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f67802d;

        UsingObserver(io.reactivex.t<? super T> tVar, D d4, w2.g<? super D> gVar, boolean z3) {
            super(d4);
            this.f67799a = tVar;
            this.f67800b = gVar;
            this.f67801c = z3;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f67800b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67802d.dispose();
            this.f67802d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67802d.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67802d = DisposableHelper.DISPOSED;
            if (this.f67801c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f67800b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f67799a.onError(th);
                    return;
                }
            }
            this.f67799a.onComplete();
            if (this.f67801c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67802d = DisposableHelper.DISPOSED;
            if (this.f67801c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f67800b.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    th = new CompositeException(th, th2);
                }
            }
            this.f67799a.onError(th);
            if (this.f67801c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67802d, bVar)) {
                this.f67802d = bVar;
                this.f67799a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67802d = DisposableHelper.DISPOSED;
            if (this.f67801c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f67800b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f67799a.onError(th);
                    return;
                }
            }
            this.f67799a.onSuccess(t3);
            if (this.f67801c) {
                return;
            }
            a();
        }
    }

    public MaybeUsing(Callable<? extends D> callable, w2.o<? super D, ? extends io.reactivex.w<? extends T>> oVar, w2.g<? super D> gVar, boolean z3) {
        this.f67795a = callable;
        this.f67796b = oVar;
        this.f67797c = gVar;
        this.f67798d = z3;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        try {
            D call = this.f67795a.call();
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67796b.apply(call), "The sourceSupplier returned a null MaybeSource")).a(new UsingObserver(tVar, call, this.f67797c, this.f67798d));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (this.f67798d) {
                    try {
                        this.f67797c.accept(call);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), tVar);
                        return;
                    }
                }
                EmptyDisposable.error(th, tVar);
                if (this.f67798d) {
                    return;
                }
                try {
                    this.f67797c.accept(call);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, tVar);
        }
    }
}
