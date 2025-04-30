package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: DisposableCompletableObserver.java */
/* loaded from: classes5.dex */
public abstract class b implements io.reactivex.d, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f70126a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        DisposableHelper.dispose(this.f70126a);
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f70126a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.d
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70126a, bVar, getClass())) {
            a();
        }
    }
}
