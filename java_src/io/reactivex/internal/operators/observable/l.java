package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: ObservableBufferExactBoundary.java */
/* loaded from: classes5.dex */
public final class l<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<B> f69124b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f69125c;

    /* compiled from: ObservableBufferExactBoundary.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f69126b;

        a(b<T, U, B> bVar) {
            this.f69126b = bVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69126b.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69126b.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b4) {
            this.f69126b.j();
        }
    }

    /* compiled from: ObservableBufferExactBoundary.java */
    /* loaded from: classes5.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.k<T, U, U> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        final Callable<U> K;

        /* renamed from: n0  reason: collision with root package name */
        final io.reactivex.e0<B> f69127n0;

        /* renamed from: o0  reason: collision with root package name */
        io.reactivex.disposables.b f69128o0;

        /* renamed from: p0  reason: collision with root package name */
        io.reactivex.disposables.b f69129p0;

        /* renamed from: q0  reason: collision with root package name */
        U f69130q0;

        b(io.reactivex.g0<? super U> g0Var, Callable<U> callable, io.reactivex.e0<B> e0Var) {
            super(g0Var, new MpscLinkedQueue());
            this.K = callable;
            this.f69127n0 = e0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            this.f69129p0.dispose();
            this.f69128o0.dispose();
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
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u4 = this.f69130q0;
                    if (u4 == null) {
                        return;
                    }
                    this.f69130q0 = u3;
                    g(u4, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.F.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            synchronized (this) {
                U u3 = this.f69130q0;
                if (u3 == null) {
                    return;
                }
                this.f69130q0 = null;
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
                U u3 = this.f69130q0;
                if (u3 == null) {
                    return;
                }
                u3.add(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69128o0, bVar)) {
                this.f69128o0 = bVar;
                try {
                    this.f69130q0 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.f69129p0 = aVar;
                    this.F.onSubscribe(this);
                    if (this.H) {
                        return;
                    }
                    this.f69127n0.a(aVar);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.H = true;
                    bVar.dispose();
                    EmptyDisposable.error(th, this.F);
                }
            }
        }
    }

    public l(io.reactivex.e0<T> e0Var, io.reactivex.e0<B> e0Var2, Callable<U> callable) {
        super(e0Var);
        this.f69124b = e0Var2;
        this.f69125c = callable;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super U> g0Var) {
        this.f68961a.a(new b(new io.reactivex.observers.l(g0Var), this.f69125c, this.f69124b));
    }
}
