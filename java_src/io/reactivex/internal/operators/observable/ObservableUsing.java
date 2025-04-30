package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class ObservableUsing<T, D> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f68860a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super D, ? extends io.reactivex.e0<? extends T>> f68861b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super D> f68862c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f68863d;

    /* loaded from: classes5.dex */
    static final class UsingObserver<T, D> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68864a;

        /* renamed from: b  reason: collision with root package name */
        final D f68865b;

        /* renamed from: c  reason: collision with root package name */
        final w2.g<? super D> f68866c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f68867d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f68868e;

        UsingObserver(io.reactivex.g0<? super T> g0Var, D d4, w2.g<? super D> gVar, boolean z3) {
            this.f68864a = g0Var;
            this.f68865b = d4;
            this.f68866c = gVar;
            this.f68867d = z3;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f68866c.accept((D) this.f68865b);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            a();
            this.f68868e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68867d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f68866c.accept((D) this.f68865b);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f68864a.onError(th);
                        return;
                    }
                }
                this.f68868e.dispose();
                this.f68864a.onComplete();
                return;
            }
            this.f68864a.onComplete();
            this.f68868e.dispose();
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68867d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f68866c.accept((D) this.f68865b);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        th = new CompositeException(th, th2);
                    }
                }
                this.f68868e.dispose();
                this.f68864a.onError(th);
                return;
            }
            this.f68864a.onError(th);
            this.f68868e.dispose();
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68864a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68868e, bVar)) {
                this.f68868e = bVar;
                this.f68864a.onSubscribe(this);
            }
        }
    }

    public ObservableUsing(Callable<? extends D> callable, w2.o<? super D, ? extends io.reactivex.e0<? extends T>> oVar, w2.g<? super D> gVar, boolean z3) {
        this.f68860a = callable;
        this.f68861b = oVar;
        this.f68862c = gVar;
        this.f68863d = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        try {
            D call = this.f68860a.call();
            try {
                ((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68861b.apply(call), "The sourceSupplier returned a null ObservableSource")).a(new UsingObserver(g0Var, call, this.f68862c, this.f68863d));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                try {
                    this.f68862c.accept(call);
                    EmptyDisposable.error(th, g0Var);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptyDisposable.error(new CompositeException(th, th2), g0Var);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            EmptyDisposable.error(th3, g0Var);
        }
    }
}
