package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeSubscribeOn<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f67743b;

    /* loaded from: classes5.dex */
    static final class SubscribeOnMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f67744a = new SequentialDisposable();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super T> f67745b;

        SubscribeOnMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67745b = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f67744a.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67745b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67745b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67745b.onSuccess(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67746a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.w<T> f67747b;

        a(io.reactivex.t<? super T> tVar, io.reactivex.w<T> wVar) {
            this.f67746a = tVar;
            this.f67747b = wVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67747b.a(this.f67746a);
        }
    }

    public MaybeSubscribeOn(io.reactivex.w<T> wVar, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f67743b = h0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        SubscribeOnMaybeObserver subscribeOnMaybeObserver = new SubscribeOnMaybeObserver(tVar);
        tVar.onSubscribe(subscribeOnMaybeObserver);
        subscribeOnMaybeObserver.f67744a.a(this.f67743b.e(new a(subscribeOnMaybeObserver, this.f67812a)));
    }
}
