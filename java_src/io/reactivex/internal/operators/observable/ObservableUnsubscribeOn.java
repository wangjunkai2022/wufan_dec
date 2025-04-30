package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class ObservableUnsubscribeOn<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f68855b;

    /* loaded from: classes5.dex */
    static final class UnsubscribeObserver<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68856a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f68857b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f68858c;

        /* loaded from: classes5.dex */
        final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                UnsubscribeObserver.this.f68858c.dispose();
            }
        }

        UnsubscribeObserver(io.reactivex.g0<? super T> g0Var, io.reactivex.h0 h0Var) {
            this.f68856a = g0Var;
            this.f68857b = h0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f68857b.e(new a());
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f68856a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (get()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f68856a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (get()) {
                return;
            }
            this.f68856a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68858c, bVar)) {
                this.f68858c = bVar;
                this.f68856a.onSubscribe(this);
            }
        }
    }

    public ObservableUnsubscribeOn(io.reactivex.e0<T> e0Var, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f68855b = h0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new UnsubscribeObserver(g0Var, this.f68855b));
    }
}
