package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeFlatMapCompletable<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67678a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.g> f67679b;

    /* loaded from: classes5.dex */
    static final class FlatMapCompletableObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2177128922851101253L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f67680a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.g> f67681b;

        FlatMapCompletableObserver(io.reactivex.d dVar, w2.o<? super T, ? extends io.reactivex.g> oVar) {
            this.f67680a = dVar;
            this.f67681b = oVar;
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
            this.f67680a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67680a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(this.f67681b.apply(t3), "The mapper returned a null CompletableSource");
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

    public MaybeFlatMapCompletable(io.reactivex.w<T> wVar, w2.o<? super T, ? extends io.reactivex.g> oVar) {
        this.f67678a = wVar;
        this.f67679b = oVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        FlatMapCompletableObserver flatMapCompletableObserver = new FlatMapCompletableObserver(dVar, this.f67679b);
        dVar.onSubscribe(flatMapCompletableObserver);
        this.f67678a.a(flatMapCompletableObserver);
    }
}
