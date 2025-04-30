package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: MaybeOnErrorComplete.java */
/* loaded from: classes5.dex */
public final class c0<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super Throwable> f67826b;

    /* compiled from: MaybeOnErrorComplete.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67827a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super Throwable> f67828b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67829c;

        a(io.reactivex.t<? super T> tVar, w2.r<? super Throwable> rVar) {
            this.f67827a = tVar;
            this.f67828b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67829c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67829c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67827a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                if (this.f67828b.test(th)) {
                    this.f67827a.onComplete();
                } else {
                    this.f67827a.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f67827a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67829c, bVar)) {
                this.f67829c = bVar;
                this.f67827a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67827a.onSuccess(t3);
        }
    }

    public c0(io.reactivex.w<T> wVar, w2.r<? super Throwable> rVar) {
        super(wVar);
        this.f67826b = rVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this.f67826b));
    }
}
