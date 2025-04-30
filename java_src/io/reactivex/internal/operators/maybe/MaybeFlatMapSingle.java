package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeFlatMapSingle<T, R> extends i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67700a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends o0<? extends R>> f67701b;

    /* loaded from: classes5.dex */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4827726964688405508L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super R> f67702a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends o0<? extends R>> f67703b;

        FlatMapMaybeObserver(l0<? super R> l0Var, w2.o<? super T, ? extends o0<? extends R>> oVar) {
            this.f67702a = l0Var;
            this.f67703b = oVar;
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
            this.f67702a.onError(new NoSuchElementException());
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67702a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67702a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                o0 o0Var = (o0) io.reactivex.internal.functions.a.g(this.f67703b.apply(t3), "The mapper returned a null SingleSource");
                if (isDisposed()) {
                    return;
                }
                o0Var.a(new a(this, this.f67702a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<R> implements l0<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f67704a;

        /* renamed from: b  reason: collision with root package name */
        final l0<? super R> f67705b;

        a(AtomicReference<io.reactivex.disposables.b> atomicReference, l0<? super R> l0Var) {
            this.f67704a = atomicReference;
            this.f67705b = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f67705b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this.f67704a, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(R r3) {
            this.f67705b.onSuccess(r3);
        }
    }

    public MaybeFlatMapSingle(io.reactivex.w<T> wVar, w2.o<? super T, ? extends o0<? extends R>> oVar) {
        this.f67700a = wVar;
        this.f67701b = oVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super R> l0Var) {
        this.f67700a.a(new FlatMapMaybeObserver(l0Var, this.f67701b));
    }
}
