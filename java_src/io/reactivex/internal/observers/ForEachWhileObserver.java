package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import w2.r;
/* loaded from: classes5.dex */
public final class ForEachWhileObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements g0<T>, io.reactivex.disposables.b {
    private static final long serialVersionUID = -4403180040475402120L;

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f65879a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f65880b;

    /* renamed from: c  reason: collision with root package name */
    final w2.a f65881c;

    /* renamed from: d  reason: collision with root package name */
    boolean f65882d;

    public ForEachWhileObserver(r<? super T> rVar, w2.g<? super Throwable> gVar, w2.a aVar) {
        this.f65879a = rVar;
        this.f65880b = gVar;
        this.f65881c = aVar;
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
        if (this.f65882d) {
            return;
        }
        this.f65882d = true;
        try {
            this.f65881c.run();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f65882d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f65882d = true;
        try {
            this.f65880b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (this.f65882d) {
            return;
        }
        try {
            if (this.f65879a.test(t3)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
