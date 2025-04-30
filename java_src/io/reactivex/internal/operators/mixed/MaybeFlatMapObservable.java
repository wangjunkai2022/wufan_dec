package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.e0;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
/* loaded from: classes5.dex */
public final class MaybeFlatMapObservable<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f68025a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends e0<? extends R>> f68026b;

    /* loaded from: classes5.dex */
    static final class FlatMapObserver<T, R> extends AtomicReference<b> implements g0<R>, t<T>, b {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f68027a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends e0<? extends R>> f68028b;

        FlatMapObserver(g0<? super R> g0Var, o<? super T, ? extends e0<? extends R>> oVar) {
            this.f68027a = g0Var;
            this.f68028b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68027a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68027a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r3) {
            this.f68027a.onNext(r3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            DisposableHelper.replace(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                ((e0) io.reactivex.internal.functions.a.g(this.f68028b.apply(t3), "The mapper returned a null Publisher")).a(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68027a.onError(th);
            }
        }
    }

    public MaybeFlatMapObservable(w<T> wVar, o<? super T, ? extends e0<? extends R>> oVar) {
        this.f68025a = wVar;
        this.f68026b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        FlatMapObserver flatMapObserver = new FlatMapObserver(g0Var, this.f68026b);
        g0Var.onSubscribe(flatMapObserver);
        this.f68025a.a(flatMapObserver);
    }
}
