package io.reactivex.internal.operators.maybe;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeSwitchIfEmptySingle<T> extends i0<T> implements x2.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67753a;

    /* renamed from: b  reason: collision with root package name */
    final o0<? extends T> f67754b;

    /* loaded from: classes5.dex */
    static final class SwitchIfEmptyMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4603919676453758899L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f67755a;

        /* renamed from: b  reason: collision with root package name */
        final o0<? extends T> f67756b;

        /* loaded from: classes5.dex */
        static final class a<T> implements l0<T> {

            /* renamed from: a  reason: collision with root package name */
            final l0<? super T> f67757a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.b> f67758b;

            a(l0<? super T> l0Var, AtomicReference<io.reactivex.disposables.b> atomicReference) {
                this.f67757a = l0Var;
                this.f67758b = atomicReference;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f67757a.onError(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this.f67758b, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t3) {
                this.f67757a.onSuccess(t3);
            }
        }

        SwitchIfEmptyMaybeObserver(l0<? super T> l0Var, o0<? extends T> o0Var) {
            this.f67755a = l0Var;
            this.f67756b = o0Var;
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
            io.reactivex.disposables.b bVar = get();
            if (bVar == DisposableHelper.DISPOSED || !compareAndSet(bVar, null)) {
                return;
            }
            this.f67756b.a(new a(this.f67755a, this));
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67755a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67755a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67755a.onSuccess(t3);
        }
    }

    public MaybeSwitchIfEmptySingle(io.reactivex.w<T> wVar, o0<? extends T> o0Var) {
        this.f67753a = wVar;
        this.f67754b = o0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f67753a.a(new SwitchIfEmptyMaybeObserver(l0Var, this.f67754b));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67753a;
    }
}
