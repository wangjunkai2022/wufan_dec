package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleFlatMapCompletable<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69634a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.g> f69635b;

    /* loaded from: classes5.dex */
    static final class FlatMapCompletableObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2177128922851101253L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f69636a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.g> f69637b;

        FlatMapCompletableObserver(io.reactivex.d dVar, w2.o<? super T, ? extends io.reactivex.g> oVar) {
            this.f69636a = dVar;
            this.f69637b = oVar;
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
            this.f69636a.onComplete();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69636a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(this.f69637b.apply(t3), "The mapper returned a null CompletableSource");
                if (isDisposed()) {
                    return;
                }
                gVar.a(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public SingleFlatMapCompletable(o0<T> o0Var, w2.o<? super T, ? extends io.reactivex.g> oVar) {
        this.f69634a = o0Var;
        this.f69635b = oVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        FlatMapCompletableObserver flatMapCompletableObserver = new FlatMapCompletableObserver(dVar, this.f69635b);
        dVar.onSubscribe(flatMapCompletableObserver);
        this.f69634a.a(flatMapCompletableObserver);
    }
}
