package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableConcatWithCompletable<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f68263b;

    /* loaded from: classes5.dex */
    static final class ConcatWithObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68264a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.g f68265b;

        /* renamed from: c  reason: collision with root package name */
        boolean f68266c;

        ConcatWithObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.g gVar) {
            this.f68264a = g0Var;
            this.f68265b = gVar;
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
            if (this.f68266c) {
                this.f68264a.onComplete();
                return;
            }
            this.f68266c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.g gVar = this.f68265b;
            this.f68265b = null;
            gVar.a(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68264a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68264a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (!DisposableHelper.setOnce(this, bVar) || this.f68266c) {
                return;
            }
            this.f68264a.onSubscribe(this);
        }
    }

    public ObservableConcatWithCompletable(io.reactivex.z<T> zVar, io.reactivex.g gVar) {
        super(zVar);
        this.f68263b = gVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new ConcatWithObserver(g0Var, this.f68263b));
    }
}
