package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: CompletablePeek.java */
/* loaded from: classes5.dex */
public final class v extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66094a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f66095b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super Throwable> f66096c;

    /* renamed from: d  reason: collision with root package name */
    final w2.a f66097d;

    /* renamed from: e  reason: collision with root package name */
    final w2.a f66098e;

    /* renamed from: f  reason: collision with root package name */
    final w2.a f66099f;

    /* renamed from: g  reason: collision with root package name */
    final w2.a f66100g;

    /* compiled from: CompletablePeek.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.d, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66101a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f66102b;

        a(io.reactivex.d dVar) {
            this.f66101a = dVar;
        }

        void a() {
            try {
                v.this.f66099f.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            try {
                v.this.f66100g.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f66102b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66102b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f66102b == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                v.this.f66097d.run();
                v.this.f66098e.run();
                this.f66101a.onComplete();
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66101a.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66102b == DisposableHelper.DISPOSED) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            try {
                v.this.f66096c.accept(th);
                v.this.f66098e.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f66101a.onError(th);
            a();
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            try {
                v.this.f66095b.accept(bVar);
                if (DisposableHelper.validate(this.f66102b, bVar)) {
                    this.f66102b = bVar;
                    this.f66101a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                bVar.dispose();
                this.f66102b = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f66101a);
            }
        }
    }

    public v(io.reactivex.g gVar, w2.g<? super io.reactivex.disposables.b> gVar2, w2.g<? super Throwable> gVar3, w2.a aVar, w2.a aVar2, w2.a aVar3, w2.a aVar4) {
        this.f66094a = gVar;
        this.f66095b = gVar2;
        this.f66096c = gVar3;
        this.f66097d = aVar;
        this.f66098e = aVar2;
        this.f66099f = aVar3;
        this.f66100g = aVar4;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66094a.a(new a(dVar));
    }
}
