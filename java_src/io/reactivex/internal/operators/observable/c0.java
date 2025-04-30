package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* compiled from: ObservableElementAt.java */
/* loaded from: classes5.dex */
public final class c0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68993b;

    /* renamed from: c  reason: collision with root package name */
    final T f68994c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f68995d;

    /* compiled from: ObservableElementAt.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68996a;

        /* renamed from: b  reason: collision with root package name */
        final long f68997b;

        /* renamed from: c  reason: collision with root package name */
        final T f68998c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f68999d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f69000e;

        /* renamed from: f  reason: collision with root package name */
        long f69001f;

        /* renamed from: g  reason: collision with root package name */
        boolean f69002g;

        a(io.reactivex.g0<? super T> g0Var, long j4, T t3, boolean z3) {
            this.f68996a = g0Var;
            this.f68997b = j4;
            this.f68998c = t3;
            this.f68999d = z3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69000e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69000e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69002g) {
                return;
            }
            this.f69002g = true;
            T t3 = this.f68998c;
            if (t3 == null && this.f68999d) {
                this.f68996a.onError(new NoSuchElementException());
                return;
            }
            if (t3 != null) {
                this.f68996a.onNext(t3);
            }
            this.f68996a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69002g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69002g = true;
            this.f68996a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69002g) {
                return;
            }
            long j4 = this.f69001f;
            if (j4 == this.f68997b) {
                this.f69002g = true;
                this.f69000e.dispose();
                this.f68996a.onNext(t3);
                this.f68996a.onComplete();
                return;
            }
            this.f69001f = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69000e, bVar)) {
                this.f69000e = bVar;
                this.f68996a.onSubscribe(this);
            }
        }
    }

    public c0(io.reactivex.e0<T> e0Var, long j4, T t3, boolean z3) {
        super(e0Var);
        this.f68993b = j4;
        this.f68994c = t3;
        this.f68995d = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f68993b, this.f68994c, this.f68995d));
    }
}
