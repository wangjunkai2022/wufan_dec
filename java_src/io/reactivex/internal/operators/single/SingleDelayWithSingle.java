package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleDelayWithSingle<T, U> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69615a;

    /* renamed from: b  reason: collision with root package name */
    final o0<U> f69616b;

    /* loaded from: classes5.dex */
    static final class OtherObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements l0<U>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69617a;

        /* renamed from: b  reason: collision with root package name */
        final o0<T> f69618b;

        OtherObserver(l0<? super T> l0Var, o0<T> o0Var) {
            this.f69617a = l0Var;
            this.f69618b = o0Var;
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
            this.f69617a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69617a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(U u3) {
            this.f69618b.a(new io.reactivex.internal.observers.o(this, this.f69617a));
        }
    }

    public SingleDelayWithSingle(o0<T> o0Var, o0<U> o0Var2) {
        this.f69615a = o0Var;
        this.f69616b = o0Var2;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69616b.a(new OtherObserver(l0Var, this.f69615a));
    }
}
