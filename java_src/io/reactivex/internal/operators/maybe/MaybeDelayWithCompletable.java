package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeDelayWithCompletable<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67652a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f67653b;

    /* loaded from: classes5.dex */
    static final class OtherObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = 703409937383992161L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67654a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.w<T> f67655b;

        OtherObserver(io.reactivex.t<? super T> tVar, io.reactivex.w<T> wVar) {
            this.f67654a = tVar;
            this.f67655b = wVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f67655b.a(new a(this, this.f67654a));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f67654a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67654a.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f67656a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super T> f67657b;

        a(AtomicReference<io.reactivex.disposables.b> atomicReference, io.reactivex.t<? super T> tVar) {
            this.f67656a = atomicReference;
            this.f67657b = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67657b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67657b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f67656a, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67657b.onSuccess(t3);
        }
    }

    public MaybeDelayWithCompletable(io.reactivex.w<T> wVar, io.reactivex.g gVar) {
        this.f67652a = wVar;
        this.f67653b = gVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67653b.a(new OtherObserver(tVar, this.f67652a));
    }
}
