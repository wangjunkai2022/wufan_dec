package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class CompletableMergeArray extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g[] f66004a;

    /* loaded from: classes5.dex */
    static final class InnerCompletableObserver extends AtomicInteger implements io.reactivex.d {
        private static final long serialVersionUID = -8360547806504310570L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66005a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f66006b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.a f66007c;

        InnerCompletableObserver(io.reactivex.d dVar, AtomicBoolean atomicBoolean, io.reactivex.disposables.a aVar, int i2) {
            this.f66005a = dVar;
            this.f66006b = atomicBoolean;
            this.f66007c = aVar;
            lazySet(i2);
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (decrementAndGet() == 0 && this.f66006b.compareAndSet(false, true)) {
                this.f66005a.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66007c.dispose();
            if (this.f66006b.compareAndSet(false, true)) {
                this.f66005a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66007c.b(bVar);
        }
    }

    public CompletableMergeArray(io.reactivex.g[] gVarArr) {
        this.f66004a = gVarArr;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        io.reactivex.g[] gVarArr;
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        InnerCompletableObserver innerCompletableObserver = new InnerCompletableObserver(dVar, new AtomicBoolean(), aVar, this.f66004a.length + 1);
        dVar.onSubscribe(aVar);
        for (io.reactivex.g gVar : this.f66004a) {
            if (aVar.isDisposed()) {
                return;
            }
            if (gVar == null) {
                aVar.dispose();
                innerCompletableObserver.onError(new NullPointerException("A completable source is null"));
                return;
            }
            gVar.a(innerCompletableObserver);
        }
        innerCompletableObserver.onComplete();
    }
}
