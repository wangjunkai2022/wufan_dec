package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeOnErrorReturn.java */
/* loaded from: classes5.dex */
public final class d0<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends T> f67831b;

    /* compiled from: MaybeOnErrorReturn.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67832a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends T> f67833b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67834c;

        a(io.reactivex.t<? super T> tVar, w2.o<? super Throwable, ? extends T> oVar) {
            this.f67832a = tVar;
            this.f67833b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67834c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67834c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67832a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                this.f67832a.onSuccess(io.reactivex.internal.functions.a.g(this.f67833b.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f67832a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67834c, bVar)) {
                this.f67834c = bVar;
                this.f67832a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67832a.onSuccess(t3);
        }
    }

    public d0(io.reactivex.w<T> wVar, w2.o<? super Throwable, ? extends T> oVar) {
        super(wVar);
        this.f67831b = oVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this.f67831b));
    }
}
