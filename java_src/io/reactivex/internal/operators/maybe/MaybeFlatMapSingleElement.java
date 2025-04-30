package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeFlatMapSingleElement<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67706a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends o0<? extends R>> f67707b;

    /* loaded from: classes5.dex */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4827726964688405508L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f67708a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends o0<? extends R>> f67709b;

        FlatMapMaybeObserver(io.reactivex.t<? super R> tVar, w2.o<? super T, ? extends o0<? extends R>> oVar) {
            this.f67708a = tVar;
            this.f67709b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67708a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67708a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67708a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                ((o0) io.reactivex.internal.functions.a.g(this.f67709b.apply(t3), "The mapper returned a null SingleSource")).a(new a(this, this.f67708a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<R> implements l0<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f67710a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super R> f67711b;

        a(AtomicReference<io.reactivex.disposables.b> atomicReference, io.reactivex.t<? super R> tVar) {
            this.f67710a = atomicReference;
            this.f67711b = tVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f67711b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f67710a, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(R r3) {
            this.f67711b.onSuccess(r3);
        }
    }

    public MaybeFlatMapSingleElement(io.reactivex.w<T> wVar, w2.o<? super T, ? extends o0<? extends R>> oVar) {
        this.f67706a = wVar;
        this.f67707b = oVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        this.f67706a.a(new FlatMapMaybeObserver(tVar, this.f67707b));
    }
}
