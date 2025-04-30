package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeObserveOn<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f67731b;

    /* loaded from: classes5.dex */
    static final class ObserveOnMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67732a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f67733b;

        /* renamed from: c  reason: collision with root package name */
        T f67734c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f67735d;

        ObserveOnMaybeObserver(io.reactivex.t<? super T> tVar, io.reactivex.h0 h0Var) {
            this.f67732a = tVar;
            this.f67733b = h0Var;
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
            DisposableHelper.replace(this, this.f67733b.e(this));
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67735d = th;
            DisposableHelper.replace(this, this.f67733b.e(this));
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67732a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67734c = t3;
            DisposableHelper.replace(this, this.f67733b.e(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f67735d;
            if (th != null) {
                this.f67735d = null;
                this.f67732a.onError(th);
                return;
            }
            T t3 = this.f67734c;
            if (t3 != null) {
                this.f67734c = null;
                this.f67732a.onSuccess(t3);
                return;
            }
            this.f67732a.onComplete();
        }
    }

    public MaybeObserveOn(io.reactivex.w<T> wVar, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f67731b = h0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new ObserveOnMaybeObserver(tVar, this.f67731b));
    }
}
