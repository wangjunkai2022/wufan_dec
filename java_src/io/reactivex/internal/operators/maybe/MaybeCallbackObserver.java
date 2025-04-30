package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeCallbackObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b, io.reactivex.observers.f {
    private static final long serialVersionUID = -6076952298809384986L;

    /* renamed from: a  reason: collision with root package name */
    final w2.g<? super T> f67602a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f67603b;

    /* renamed from: c  reason: collision with root package name */
    final w2.a f67604c;

    public MaybeCallbackObserver(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        this.f67602a = gVar;
        this.f67603b = gVar2;
        this.f67604c = aVar;
    }

    @Override // io.reactivex.observers.f
    public boolean a() {
        return this.f67603b != Functions.f65827f;
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
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f67604c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.t
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f67603b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.t
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // io.reactivex.t
    public void onSuccess(T t3) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f67602a.accept(t3);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
