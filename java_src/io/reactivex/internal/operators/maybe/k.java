package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeFilter.java */
/* loaded from: classes5.dex */
public final class k<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f67865b;

    /* compiled from: MaybeFilter.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67866a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67867b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67868c;

        a(io.reactivex.t<? super T> tVar, w2.r<? super T> rVar) {
            this.f67866a = tVar;
            this.f67867b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            io.reactivex.disposables.b bVar = this.f67868c;
            this.f67868c = DisposableHelper.DISPOSED;
            bVar.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67868c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67866a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67866a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67868c, bVar)) {
                this.f67868c = bVar;
                this.f67866a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                if (this.f67867b.test(t3)) {
                    this.f67866a.onSuccess(t3);
                } else {
                    this.f67866a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67866a.onError(th);
            }
        }
    }

    public k(io.reactivex.w<T> wVar, w2.r<? super T> rVar) {
        super(wVar);
        this.f67865b = rVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this.f67865b));
    }
}
