package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: ObservableGenerate.java */
/* loaded from: classes5.dex */
public final class p0<T, S> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<S> f69221a;

    /* renamed from: b  reason: collision with root package name */
    final w2.c<S, io.reactivex.i<T>, S> f69222b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super S> f69223c;

    /* compiled from: ObservableGenerate.java */
    /* loaded from: classes5.dex */
    static final class a<T, S> implements io.reactivex.i<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69224a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<S, ? super io.reactivex.i<T>, S> f69225b;

        /* renamed from: c  reason: collision with root package name */
        final w2.g<? super S> f69226c;

        /* renamed from: d  reason: collision with root package name */
        S f69227d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f69228e;

        /* renamed from: f  reason: collision with root package name */
        boolean f69229f;

        /* renamed from: g  reason: collision with root package name */
        boolean f69230g;

        a(io.reactivex.g0<? super T> g0Var, w2.c<S, ? super io.reactivex.i<T>, S> cVar, w2.g<? super S> gVar, S s3) {
            this.f69224a = g0Var;
            this.f69225b = cVar;
            this.f69226c = gVar;
            this.f69227d = s3;
        }

        private void e(S s3) {
            try {
                this.f69226c.accept(s3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69228e = true;
        }

        public void f() {
            S s3 = this.f69227d;
            if (this.f69228e) {
                this.f69227d = null;
                e(s3);
                return;
            }
            w2.c<S, ? super io.reactivex.i<T>, S> cVar = this.f69225b;
            while (!this.f69228e) {
                this.f69230g = false;
                try {
                    s3 = cVar.apply(s3, this);
                    if (this.f69229f) {
                        this.f69228e = true;
                        this.f69227d = null;
                        e(s3);
                        return;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f69227d = null;
                    this.f69228e = true;
                    onError(th);
                    e(s3);
                    return;
                }
            }
            this.f69227d = null;
            e(s3);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69228e;
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f69229f) {
                return;
            }
            this.f69229f = true;
            this.f69224a.onComplete();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (this.f69229f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f69229f = true;
            this.f69224a.onError(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (this.f69229f) {
                return;
            }
            if (this.f69230g) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f69230g = true;
                this.f69224a.onNext(t3);
            }
        }
    }

    public p0(Callable<S> callable, w2.c<S, io.reactivex.i<T>, S> cVar, w2.g<? super S> gVar) {
        this.f69221a = callable;
        this.f69222b = cVar;
        this.f69223c = gVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        try {
            a aVar = new a(g0Var, this.f69222b, this.f69223c, this.f69221a.call());
            g0Var.onSubscribe(aVar);
            aVar.f();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
