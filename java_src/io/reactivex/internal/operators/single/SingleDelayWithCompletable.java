package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleDelayWithCompletable<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69600a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f69601b;

    /* loaded from: classes5.dex */
    static final class OtherObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69602a;

        /* renamed from: b  reason: collision with root package name */
        final o0<T> f69603b;

        OtherObserver(l0<? super T> l0Var, o0<T> o0Var) {
            this.f69602a = l0Var;
            this.f69603b = o0Var;
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
            this.f69603b.a(new io.reactivex.internal.observers.o(this, this.f69602a));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f69602a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69602a.onSubscribe(this);
            }
        }
    }

    public SingleDelayWithCompletable(o0<T> o0Var, io.reactivex.g gVar) {
        this.f69600a = o0Var;
        this.f69601b = gVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69601b.a(new OtherObserver(l0Var, this.f69600a));
    }
}
