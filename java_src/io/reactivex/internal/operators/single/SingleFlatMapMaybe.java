package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleFlatMapMaybe<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69655a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends w<? extends R>> f69656b;

    /* loaded from: classes5.dex */
    static final class FlatMapSingleObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5843758257109742742L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f69657a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends w<? extends R>> f69658b;

        FlatMapSingleObserver(io.reactivex.t<? super R> tVar, w2.o<? super T, ? extends w<? extends R>> oVar) {
            this.f69657a = tVar;
            this.f69658b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69657a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69657a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                w wVar = (w) io.reactivex.internal.functions.a.g(this.f69658b.apply(t3), "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                wVar.a(new a(this, this.f69657a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<R> implements io.reactivex.t<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69659a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super R> f69660b;

        a(AtomicReference<io.reactivex.disposables.b> atomicReference, io.reactivex.t<? super R> tVar) {
            this.f69659a = atomicReference;
            this.f69660b = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f69660b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f69660b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f69659a, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(R r3) {
            this.f69660b.onSuccess(r3);
        }
    }

    public SingleFlatMapMaybe(o0<? extends T> o0Var, w2.o<? super T, ? extends w<? extends R>> oVar) {
        this.f69656b = oVar;
        this.f69655a = o0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        this.f69655a.a(new FlatMapSingleObserver(tVar, this.f69656b));
    }
}
