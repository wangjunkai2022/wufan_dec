package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeMap.java */
/* loaded from: classes5.dex */
public final class a0<T, R> extends io.reactivex.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends R> f67813b;

    /* compiled from: MaybeMap.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f67814a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends R> f67815b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67816c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.t<? super R> tVar, w2.o<? super T, ? extends R> oVar) {
            this.f67814a = tVar;
            this.f67815b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            io.reactivex.disposables.b bVar = this.f67816c;
            this.f67816c = DisposableHelper.DISPOSED;
            bVar.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67816c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67814a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67814a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67816c, bVar)) {
                this.f67816c = bVar;
                this.f67814a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                this.f67814a.onSuccess(io.reactivex.internal.functions.a.g(this.f67815b.apply(t3), "The mapper returned a null item"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67814a.onError(th);
            }
        }
    }

    public a0(io.reactivex.w<T> wVar, w2.o<? super T, ? extends R> oVar) {
        super(wVar);
        this.f67813b = oVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        this.f67812a.a(new a(tVar, this.f67813b));
    }
}
