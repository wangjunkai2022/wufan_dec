package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableDoOnEach.java */
/* loaded from: classes5.dex */
public final class a0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f68962b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super Throwable> f68963c;

    /* renamed from: d  reason: collision with root package name */
    final w2.a f68964d;

    /* renamed from: e  reason: collision with root package name */
    final w2.a f68965e;

    /* compiled from: ObservableDoOnEach.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68966a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super T> f68967b;

        /* renamed from: c  reason: collision with root package name */
        final w2.g<? super Throwable> f68968c;

        /* renamed from: d  reason: collision with root package name */
        final w2.a f68969d;

        /* renamed from: e  reason: collision with root package name */
        final w2.a f68970e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68971f;

        /* renamed from: g  reason: collision with root package name */
        boolean f68972g;

        a(io.reactivex.g0<? super T> g0Var, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2) {
            this.f68966a = g0Var;
            this.f68967b = gVar;
            this.f68968c = gVar2;
            this.f68969d = aVar;
            this.f68970e = aVar2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68971f.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68971f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68972g) {
                return;
            }
            try {
                this.f68969d.run();
                this.f68972g = true;
                this.f68966a.onComplete();
                try {
                    this.f68970e.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68972g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68972g = true;
            try {
                this.f68968c.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f68966a.onError(th);
            try {
                this.f68970e.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68972g) {
                return;
            }
            try {
                this.f68967b.accept(t3);
                this.f68966a.onNext(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68971f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68971f, bVar)) {
                this.f68971f = bVar;
                this.f68966a.onSubscribe(this);
            }
        }
    }

    public a0(io.reactivex.e0<T> e0Var, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2) {
        super(e0Var);
        this.f68962b = gVar;
        this.f68963c = gVar2;
        this.f68964d = aVar;
        this.f68965e = aVar2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f68962b, this.f68963c, this.f68964d, this.f68965e));
    }
}
