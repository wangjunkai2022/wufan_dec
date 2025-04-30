package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class LambdaObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements g0<T>, io.reactivex.disposables.b, io.reactivex.observers.f {
    private static final long serialVersionUID = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final w2.g<? super T> f65888a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f65889b;

    /* renamed from: c  reason: collision with root package name */
    final w2.a f65890c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f65891d;

    public LambdaObserver(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.g<? super io.reactivex.disposables.b> gVar3) {
        this.f65888a = gVar;
        this.f65889b = gVar2;
        this.f65890c = aVar;
        this.f65891d = gVar3;
    }

    @Override // io.reactivex.observers.f
    public boolean a() {
        return this.f65889b != Functions.f65827f;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f65890c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.f65889b.accept(th);
                return;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                return;
            }
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f65888a.accept(t3);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            get().dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            try {
                this.f65891d.accept(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                bVar.dispose();
                onError(th);
            }
        }
    }
}
