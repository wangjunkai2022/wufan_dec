package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CallbackCompletableObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b, w2.g<Throwable>, io.reactivex.observers.f {
    private static final long serialVersionUID = -4361286194466301354L;

    /* renamed from: a  reason: collision with root package name */
    final w2.g<? super Throwable> f65867a;

    /* renamed from: b  reason: collision with root package name */
    final w2.a f65868b;

    public CallbackCompletableObserver(w2.a aVar) {
        this.f65867a = this;
        this.f65868b = aVar;
    }

    @Override // io.reactivex.observers.f
    public boolean a() {
        return this.f65867a != this;
    }

    @Override // w2.g
    /* renamed from: b */
    public void accept(Throwable th) {
        io.reactivex.plugins.a.Y(new OnErrorNotImplementedException(th));
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.d
    public void onComplete() {
        try {
            this.f65868b.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        try {
            this.f65867a.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    public CallbackCompletableObserver(w2.g<? super Throwable> gVar, w2.a aVar) {
        this.f65867a = gVar;
        this.f65868b = aVar;
    }
}
