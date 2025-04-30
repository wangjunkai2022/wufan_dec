package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: DisposableObserver.java */
/* loaded from: classes5.dex */
public abstract class d<T> implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f70128a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        DisposableHelper.dispose(this.f70128a);
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f70128a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70128a, bVar, getClass())) {
            a();
        }
    }
}
