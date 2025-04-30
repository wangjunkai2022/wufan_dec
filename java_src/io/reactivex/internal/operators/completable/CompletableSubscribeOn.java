package io.reactivex.internal.operators.completable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableSubscribeOn extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66022a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f66023b;

    /* loaded from: classes5.dex */
    static final class SubscribeOnObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66024a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f66025b = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.g f66026c;

        SubscribeOnObserver(io.reactivex.d dVar, io.reactivex.g gVar) {
            this.f66024a = dVar;
            this.f66026c = gVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f66025b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66024a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66024a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f66026c.a(this);
        }
    }

    public CompletableSubscribeOn(io.reactivex.g gVar, h0 h0Var) {
        this.f66022a = gVar;
        this.f66023b = h0Var;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(dVar, this.f66022a);
        dVar.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.f66025b.a(this.f66023b.e(subscribeOnObserver));
    }
}
