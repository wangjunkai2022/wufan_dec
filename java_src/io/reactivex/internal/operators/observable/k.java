package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ObservableBufferBoundarySupplier.java */
/* loaded from: classes5.dex */
public final class k<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<B>> f69108b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f69109c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableBufferBoundarySupplier.java */
    /* loaded from: classes5.dex */
    public static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f69110b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69111c;

        a(b<T, U, B> bVar) {
            this.f69110b = bVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69111c) {
                return;
            }
            this.f69111c = true;
            this.f69110b.k();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69111c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69111c = true;
            this.f69110b.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b4) {
            if (this.f69111c) {
                return;
            }
            this.f69111c = true;
            dispose();
            this.f69110b.k();
        }
    }

    /* compiled from: ObservableBufferBoundarySupplier.java */
    /* loaded from: classes5.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.k<T, U, U> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        final Callable<U> K;

        /* renamed from: n0  reason: collision with root package name */
        final Callable<? extends io.reactivex.e0<B>> f69112n0;

        /* renamed from: o0  reason: collision with root package name */
        io.reactivex.disposables.b f69113o0;

        /* renamed from: p0  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69114p0;

        /* renamed from: q0  reason: collision with root package name */
        U f69115q0;

        b(io.reactivex.g0<? super U> g0Var, Callable<U> callable, Callable<? extends io.reactivex.e0<B>> callable2) {
            super(g0Var, new MpscLinkedQueue());
            this.f69114p0 = new AtomicReference<>();
            this.K = callable;
            this.f69112n0 = callable2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            this.f69113o0.dispose();
            j();
            if (b()) {
                this.G.clear();
            }
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.j
        /* renamed from: i */
        public void f(io.reactivex.g0<? super U> g0Var, U u3) {
            this.F.onNext(u3);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        void j() {
            DisposableHelper.dispose(this.f69114p0);
        }

        void k() {
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                try {
                    io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69112n0.call(), "The boundary ObservableSource supplied is null");
                    a aVar = new a(this);
                    if (DisposableHelper.replace(this.f69114p0, aVar)) {
                        synchronized (this) {
                            U u4 = this.f69115q0;
                            if (u4 == null) {
                                return;
                            }
                            this.f69115q0 = u3;
                            e0Var.a(aVar);
                            g(u4, false, this);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.H = true;
                    this.f69113o0.dispose();
                    this.F.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.F.onError(th2);
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            synchronized (this) {
                U u3 = this.f69115q0;
                if (u3 == null) {
                    return;
                }
                this.f69115q0 = null;
                this.G.offer(u3);
                this.I = true;
                if (b()) {
                    io.reactivex.internal.util.n.d(this.G, this.F, false, this, this);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            dispose();
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            synchronized (this) {
                U u3 = this.f69115q0;
                if (u3 == null) {
                    return;
                }
                u3.add(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69113o0, bVar)) {
                this.f69113o0 = bVar;
                io.reactivex.g0<? super V> g0Var = this.F;
                try {
                    this.f69115q0 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                    try {
                        io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69112n0.call(), "The boundary ObservableSource supplied is null");
                        a aVar = new a(this);
                        this.f69114p0.set(aVar);
                        g0Var.onSubscribe(this);
                        if (this.H) {
                            return;
                        }
                        e0Var.a(aVar);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.H = true;
                        bVar.dispose();
                        EmptyDisposable.error(th, g0Var);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.H = true;
                    bVar.dispose();
                    EmptyDisposable.error(th2, g0Var);
                }
            }
        }
    }

    public k(io.reactivex.e0<T> e0Var, Callable<? extends io.reactivex.e0<B>> callable, Callable<U> callable2) {
        super(e0Var);
        this.f69108b = callable;
        this.f69109c = callable2;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super U> g0Var) {
        this.f68961a.a(new b(new io.reactivex.observers.l(g0Var), this.f69109c, this.f69108b));
    }
}
