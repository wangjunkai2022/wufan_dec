package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableConcatWithSingle<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f68271b;

    /* loaded from: classes5.dex */
    static final class ConcatWithObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68272a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.o0<? extends T> f68273b;

        /* renamed from: c  reason: collision with root package name */
        boolean f68274c;

        ConcatWithObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.o0<? extends T> o0Var) {
            this.f68272a = g0Var;
            this.f68273b = o0Var;
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
            this.f68274c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.o0<? extends T> o0Var = this.f68273b;
            this.f68273b = null;
            o0Var.a(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68272a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68272a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (!DisposableHelper.setOnce(this, bVar) || this.f68274c) {
                return;
            }
            this.f68272a.onSubscribe(this);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f68272a.onNext(t3);
            this.f68272a.onComplete();
        }
    }

    public ObservableConcatWithSingle(io.reactivex.z<T> zVar, io.reactivex.o0<? extends T> o0Var) {
        super(zVar);
        this.f68271b = o0Var;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new ConcatWithObserver(g0Var, this.f68271b));
    }
}
