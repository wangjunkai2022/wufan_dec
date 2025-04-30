package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeUnsubscribeOn<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f67791b;

    /* loaded from: classes5.dex */
    static final class UnsubscribeOnMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 3256698449646456986L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67792a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f67793b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67794c;

        UnsubscribeOnMaybeObserver(io.reactivex.t<? super T> tVar, io.reactivex.h0 h0Var) {
            this.f67792a = tVar;
            this.f67793b = h0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            io.reactivex.disposables.b andSet = getAndSet(disposableHelper);
            if (andSet != disposableHelper) {
                this.f67794c = andSet;
                this.f67793b.e(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67792a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67792a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67792a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67792a.onSuccess(t3);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67794c.dispose();
        }
    }

    public MaybeUnsubscribeOn(io.reactivex.w<T> wVar, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f67791b = h0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new UnsubscribeOnMaybeObserver(tVar, this.f67791b));
    }
}
