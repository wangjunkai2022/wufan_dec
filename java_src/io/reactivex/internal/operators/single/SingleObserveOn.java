package io.reactivex.internal.operators.single;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleObserveOn<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69669a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f69670b;

    /* loaded from: classes5.dex */
    static final class ObserveOnSingleObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 3528003840217436037L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69671a;

        /* renamed from: b  reason: collision with root package name */
        final h0 f69672b;

        /* renamed from: c  reason: collision with root package name */
        T f69673c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f69674d;

        ObserveOnSingleObserver(l0<? super T> l0Var, h0 h0Var) {
            this.f69671a = l0Var;
            this.f69672b = h0Var;
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
            this.f69674d = th;
            DisposableHelper.replace(this, this.f69672b.e(this));
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69671a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69673c = t3;
            DisposableHelper.replace(this, this.f69672b.e(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f69674d;
            if (th != null) {
                this.f69671a.onError(th);
            } else {
                this.f69671a.onSuccess((T) this.f69673c);
            }
        }
    }

    public SingleObserveOn(o0<T> o0Var, h0 h0Var) {
        this.f69669a = o0Var;
        this.f69670b = h0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69669a.a(new ObserveOnSingleObserver(l0Var, this.f69670b));
    }
}
