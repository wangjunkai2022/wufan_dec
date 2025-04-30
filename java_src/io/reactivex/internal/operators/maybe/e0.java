package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: MaybePeek.java */
/* loaded from: classes5.dex */
public final class e0<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f67837b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super T> f67838c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super Throwable> f67839d;

    /* renamed from: e  reason: collision with root package name */
    final w2.a f67840e;

    /* renamed from: f  reason: collision with root package name */
    final w2.a f67841f;

    /* renamed from: g  reason: collision with root package name */
    final w2.a f67842g;

    /* compiled from: MaybePeek.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67843a;

        /* renamed from: b  reason: collision with root package name */
        final e0<T> f67844b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67845c;

        a(io.reactivex.t<? super T> tVar, e0<T> e0Var) {
            this.f67843a = tVar;
            this.f67844b = e0Var;
        }

        void a() {
            try {
                this.f67844b.f67841f.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        void b(Throwable th) {
            try {
                this.f67844b.f67839d.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f67845c = DisposableHelper.DISPOSED;
            this.f67843a.onError(th);
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            try {
                this.f67844b.f67842g.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f67845c.dispose();
            this.f67845c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67845c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            io.reactivex.disposables.b bVar = this.f67845c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper) {
                return;
            }
            try {
                this.f67844b.f67840e.run();
                this.f67845c = disposableHelper;
                this.f67843a.onComplete();
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                b(th);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (this.f67845c == DisposableHelper.DISPOSED) {
                io.reactivex.plugins.a.Y(th);
            } else {
                b(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67845c, bVar)) {
                try {
                    this.f67844b.f67837b.accept(bVar);
                    this.f67845c = bVar;
                    this.f67843a.onSubscribe(this);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    bVar.dispose();
                    this.f67845c = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, this.f67843a);
                }
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            io.reactivex.disposables.b bVar = this.f67845c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper) {
                return;
            }
            try {
                this.f67844b.f67838c.accept(t3);
                this.f67845c = disposableHelper;
                this.f67843a.onSuccess(t3);
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                b(th);
            }
        }
    }

    public e0(io.reactivex.w<T> wVar, w2.g<? super io.reactivex.disposables.b> gVar, w2.g<? super T> gVar2, w2.g<? super Throwable> gVar3, w2.a aVar, w2.a aVar2, w2.a aVar3) {
        super(wVar);
        this.f67837b = gVar;
        this.f67838c = gVar2;
        this.f67839d = gVar3;
        this.f67840e = aVar;
        this.f67841f = aVar2;
        this.f67842g = aVar3;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this));
    }
}
