package io.reactivex.internal.operators.single;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleUnsubscribeOn<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69707a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f69708b;

    /* loaded from: classes5.dex */
    static final class UnsubscribeOnSingleObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 3256698449646456986L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69709a;

        /* renamed from: b  reason: collision with root package name */
        final h0 f69710b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69711c;

        UnsubscribeOnSingleObserver(l0<? super T> l0Var, h0 h0Var) {
            this.f69709a = l0Var;
            this.f69710b = h0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            io.reactivex.disposables.b andSet = getAndSet(disposableHelper);
            if (andSet != disposableHelper) {
                this.f69711c = andSet;
                this.f69710b.e(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69709a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69709a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69709a.onSuccess(t3);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f69711c.dispose();
        }
    }

    public SingleUnsubscribeOn(o0<T> o0Var, h0 h0Var) {
        this.f69707a = o0Var;
        this.f69708b = h0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69707a.a(new UnsubscribeOnSingleObserver(l0Var, this.f69708b));
    }
}
