package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: DisposableSingleObserver.java */
/* loaded from: classes5.dex */
public abstract class e<T> implements l0<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f70129a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        DisposableHelper.dispose(this.f70129a);
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f70129a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.l0
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70129a, bVar, getClass())) {
            a();
        }
    }
}
