package io.reactivex.internal.operators.single;

import io.reactivex.e0;
import io.reactivex.g0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleDelayWithObservable<T, U> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69604a;

    /* renamed from: b  reason: collision with root package name */
    final e0<U> f69605b;

    /* loaded from: classes5.dex */
    static final class OtherSubscriber<T, U> extends AtomicReference<io.reactivex.disposables.b> implements g0<U>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69606a;

        /* renamed from: b  reason: collision with root package name */
        final o0<T> f69607b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69608c;

        OtherSubscriber(l0<? super T> l0Var, o0<T> o0Var) {
            this.f69606a = l0Var;
            this.f69607b = o0Var;
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
            if (this.f69608c) {
                return;
            }
            this.f69608c = true;
            this.f69607b.a(new io.reactivex.internal.observers.o(this, this.f69606a));
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69608c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69608c = true;
            this.f69606a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u3) {
            get().dispose();
            onComplete();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.set(this, bVar)) {
                this.f69606a.onSubscribe(this);
            }
        }
    }

    public SingleDelayWithObservable(o0<T> o0Var, e0<U> e0Var) {
        this.f69604a = o0Var;
        this.f69605b = e0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69605b.a(new OtherSubscriber(l0Var, this.f69604a));
    }
}
