package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class InnerQueuedObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements g0<T>, io.reactivex.disposables.b {
    private static final long serialVersionUID = -5417183359794346637L;

    /* renamed from: a  reason: collision with root package name */
    final j<T> f65883a;

    /* renamed from: b  reason: collision with root package name */
    final int f65884b;

    /* renamed from: c  reason: collision with root package name */
    x2.o<T> f65885c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f65886d;

    /* renamed from: e  reason: collision with root package name */
    int f65887e;

    public InnerQueuedObserver(j<T> jVar, int i2) {
        this.f65883a = jVar;
        this.f65884b = i2;
    }

    public int a() {
        return this.f65887e;
    }

    public boolean b() {
        return this.f65886d;
    }

    public x2.o<T> c() {
        return this.f65885c;
    }

    public void d() {
        this.f65886d = true;
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
        this.f65883a.d(this);
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f65883a.c(this, th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (this.f65887e == 0) {
            this.f65883a.e(this, t3);
        } else {
            this.f65883a.b();
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            if (bVar instanceof x2.j) {
                x2.j jVar = (x2.j) bVar;
                int requestFusion = jVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f65887e = requestFusion;
                    this.f65885c = jVar;
                    this.f65886d = true;
                    this.f65883a.d(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f65887e = requestFusion;
                    this.f65885c = jVar;
                    return;
                }
            }
            this.f65885c = io.reactivex.internal.util.n.c(-this.f65884b);
        }
    }
}
