package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: DisposableLambdaObserver.java */
/* loaded from: classes5.dex */
public final class g<T> implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final g0<? super T> f65905a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f65906b;

    /* renamed from: c  reason: collision with root package name */
    final w2.a f65907c;

    /* renamed from: d  reason: collision with root package name */
    io.reactivex.disposables.b f65908d;

    public g(g0<? super T> g0Var, w2.g<? super io.reactivex.disposables.b> gVar, w2.a aVar) {
        this.f65905a = g0Var;
        this.f65906b = gVar;
        this.f65907c = aVar;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        try {
            this.f65907c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
        this.f65908d.dispose();
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f65908d.isDisposed();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f65908d != DisposableHelper.DISPOSED) {
            this.f65905a.onComplete();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f65908d != DisposableHelper.DISPOSED) {
            this.f65905a.onError(th);
        } else {
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        this.f65905a.onNext(t3);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        try {
            this.f65906b.accept(bVar);
            if (DisposableHelper.validate(this.f65908d, bVar)) {
                this.f65908d = bVar;
                this.f65905a.onSubscribe(this);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            bVar.dispose();
            this.f65908d = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th, this.f65905a);
        }
    }
}
