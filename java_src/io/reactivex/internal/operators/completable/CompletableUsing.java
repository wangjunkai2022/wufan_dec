package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableUsing<R> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<R> f66037a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super R, ? extends io.reactivex.g> f66038b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super R> f66039c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66040d;

    /* loaded from: classes5.dex */
    static final class UsingObserver<R> extends AtomicReference<Object> implements io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = -674404550052917487L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66041a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super R> f66042b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f66043c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f66044d;

        UsingObserver(io.reactivex.d dVar, R r3, w2.g<? super R> gVar, boolean z3) {
            super(r3);
            this.f66041a = dVar;
            this.f66042b = gVar;
            this.f66043c = z3;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f66042b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66044d.dispose();
            this.f66044d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66044d.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66044d = DisposableHelper.DISPOSED;
            if (this.f66043c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f66042b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f66041a.onError(th);
                    return;
                }
            }
            this.f66041a.onComplete();
            if (this.f66043c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66044d = DisposableHelper.DISPOSED;
            if (this.f66043c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f66042b.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    th = new CompositeException(th, th2);
                }
            }
            this.f66041a.onError(th);
            if (this.f66043c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f66044d, bVar)) {
                this.f66044d = bVar;
                this.f66041a.onSubscribe(this);
            }
        }
    }

    public CompletableUsing(Callable<R> callable, w2.o<? super R, ? extends io.reactivex.g> oVar, w2.g<? super R> gVar, boolean z3) {
        this.f66037a = callable;
        this.f66038b = oVar;
        this.f66039c = gVar;
        this.f66040d = z3;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        try {
            R call = this.f66037a.call();
            try {
                ((io.reactivex.g) io.reactivex.internal.functions.a.g(this.f66038b.apply(call), "The completableFunction returned a null CompletableSource")).a(new UsingObserver(dVar, call, this.f66039c, this.f66040d));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (this.f66040d) {
                    try {
                        this.f66039c.accept(call);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), dVar);
                        return;
                    }
                }
                EmptyDisposable.error(th, dVar);
                if (this.f66040d) {
                    return;
                }
                try {
                    this.f66039c.accept(call);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, dVar);
        }
    }
}
