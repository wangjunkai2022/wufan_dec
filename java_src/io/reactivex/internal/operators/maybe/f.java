package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeDoAfterSuccess.java */
/* loaded from: classes5.dex */
public final class f<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f67846b;

    /* compiled from: MaybeDoAfterSuccess.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67847a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super T> f67848b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67849c;

        a(io.reactivex.t<? super T> tVar, w2.g<? super T> gVar) {
            this.f67847a = tVar;
            this.f67848b = gVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67849c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67849c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67847a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67847a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67849c, bVar)) {
                this.f67849c = bVar;
                this.f67847a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67847a.onSuccess(t3);
            try {
                this.f67848b.accept(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    public f(io.reactivex.w<T> wVar, w2.g<? super T> gVar) {
        super(wVar);
        this.f67846b = gVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this.f67846b));
    }
}
