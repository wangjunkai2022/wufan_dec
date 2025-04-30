package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableConcatWithMaybe<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f68267b;

    /* loaded from: classes5.dex */
    static final class ConcatWithObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68268a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.w<? extends T> f68269b;

        /* renamed from: c  reason: collision with root package name */
        boolean f68270c;

        ConcatWithObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.w<? extends T> wVar) {
            this.f68268a = g0Var;
            this.f68269b = wVar;
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
            if (this.f68270c) {
                this.f68268a.onComplete();
                return;
            }
            this.f68270c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.w<? extends T> wVar = this.f68269b;
            this.f68269b = null;
            wVar.a(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68268a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68268a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (!DisposableHelper.setOnce(this, bVar) || this.f68270c) {
                return;
            }
            this.f68268a.onSubscribe(this);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f68268a.onNext(t3);
            this.f68268a.onComplete();
        }
    }

    public ObservableConcatWithMaybe(io.reactivex.z<T> zVar, io.reactivex.w<? extends T> wVar) {
        super(zVar);
        this.f68267b = wVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new ConcatWithObserver(g0Var, this.f68267b));
    }
}
