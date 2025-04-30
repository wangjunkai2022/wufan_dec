package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableScalarXMap {

    /* loaded from: classes5.dex */
    public static final class ScalarDisposable<T> extends AtomicInteger implements x2.j<T>, Runnable {

        /* renamed from: c  reason: collision with root package name */
        static final int f68674c = 0;

        /* renamed from: d  reason: collision with root package name */
        static final int f68675d = 1;

        /* renamed from: e  reason: collision with root package name */
        static final int f68676e = 2;

        /* renamed from: f  reason: collision with root package name */
        static final int f68677f = 3;
        private static final long serialVersionUID = 3880992722410194083L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68678a;

        /* renamed from: b  reason: collision with root package name */
        final T f68679b;

        public ScalarDisposable(io.reactivex.g0<? super T> g0Var, T t3) {
            this.f68678a = g0Var;
            this.f68679b = t3;
        }

        @Override // x2.o
        public void clear() {
            lazySet(3);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            set(3);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // x2.o
        public boolean offer(T t3) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            if (get() == 1) {
                lazySet(3);
                return this.f68679b;
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 1) != 0) {
                lazySet(1);
                return 1;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f68678a.onNext((T) this.f68679b);
                if (get() == 2) {
                    lazySet(3);
                    this.f68678a.onComplete();
                }
            }
        }

        @Override // x2.o
        public boolean offer(T t3, T t4) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T, R> extends io.reactivex.z<R> {

        /* renamed from: a  reason: collision with root package name */
        final T f68680a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f68681b;

        a(T t3, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar) {
            this.f68680a = t3;
            this.f68681b = oVar;
        }

        @Override // io.reactivex.z
        public void F5(io.reactivex.g0<? super R> g0Var) {
            try {
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68681b.apply((T) this.f68680a), "The mapper returned a null ObservableSource");
                if (e0Var instanceof Callable) {
                    try {
                        Object call = ((Callable) e0Var).call();
                        if (call == null) {
                            EmptyDisposable.complete(g0Var);
                            return;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(g0Var, call);
                        g0Var.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                        return;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        EmptyDisposable.error(th, g0Var);
                        return;
                    }
                }
                e0Var.a(g0Var);
            } catch (Throwable th2) {
                EmptyDisposable.error(th2, g0Var);
            }
        }
    }

    private ObservableScalarXMap() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> io.reactivex.z<U> a(T t3, w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar) {
        return io.reactivex.plugins.a.R(new a(t3, oVar));
    }

    public static <T, R> boolean b(io.reactivex.e0<T> e0Var, io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar) {
        if (e0Var instanceof Callable) {
            try {
                Object obj = (Object) ((Callable) e0Var).call();
                if (obj == 0) {
                    EmptyDisposable.complete(g0Var);
                    return true;
                }
                try {
                    io.reactivex.e0 e0Var2 = (io.reactivex.e0) io.reactivex.internal.functions.a.g(oVar.apply(obj), "The mapper returned a null ObservableSource");
                    if (e0Var2 instanceof Callable) {
                        try {
                            Object call = ((Callable) e0Var2).call();
                            if (call == null) {
                                EmptyDisposable.complete(g0Var);
                                return true;
                            }
                            ScalarDisposable scalarDisposable = new ScalarDisposable(g0Var, call);
                            g0Var.onSubscribe(scalarDisposable);
                            scalarDisposable.run();
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            EmptyDisposable.error(th, g0Var);
                            return true;
                        }
                    } else {
                        e0Var2.a(g0Var);
                    }
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptyDisposable.error(th2, g0Var);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                EmptyDisposable.error(th3, g0Var);
                return true;
            }
        }
        return false;
    }
}
