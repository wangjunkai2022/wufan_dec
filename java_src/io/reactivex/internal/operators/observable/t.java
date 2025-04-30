package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
/* compiled from: ObservableDelay.java */
/* loaded from: classes5.dex */
public final class t<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f69273b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f69274c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f69275d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f69276e;

    /* compiled from: ObservableDelay.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69277a;

        /* renamed from: b  reason: collision with root package name */
        final long f69278b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f69279c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f69280d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f69281e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f69282f;

        /* compiled from: ObservableDelay.java */
        /* renamed from: io.reactivex.internal.operators.observable.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class RunnableC0459a implements Runnable {
            RunnableC0459a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f69277a.onComplete();
                } finally {
                    a.this.f69280d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay.java */
        /* loaded from: classes5.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f69284a;

            b(Throwable th) {
                this.f69284a = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f69277a.onError(this.f69284a);
                } finally {
                    a.this.f69280d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay.java */
        /* loaded from: classes5.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f69286a;

            c(T t3) {
                this.f69286a = t3;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f69277a.onNext((T) this.f69286a);
            }
        }

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar, boolean z3) {
            this.f69277a = g0Var;
            this.f69278b = j4;
            this.f69279c = timeUnit;
            this.f69280d = cVar;
            this.f69281e = z3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69282f.dispose();
            this.f69280d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69280d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69280d.c(new RunnableC0459a(), this.f69278b, this.f69279c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69280d.c(new b(th), this.f69281e ? this.f69278b : 0L, this.f69279c);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69280d.c(new c(t3), this.f69278b, this.f69279c);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69282f, bVar)) {
                this.f69282f = bVar;
                this.f69277a.onSubscribe(this);
            }
        }
    }

    public t(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z3) {
        super(e0Var);
        this.f69273b = j4;
        this.f69274c = timeUnit;
        this.f69275d = h0Var;
        this.f69276e = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(this.f69276e ? g0Var : new io.reactivex.observers.l(g0Var), this.f69273b, this.f69274c, this.f69275d.c(), this.f69276e));
    }
}
