package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: DisposableMaybeObserver.java */
/* loaded from: classes5.dex */
public abstract class c<T> implements t<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f70127a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        DisposableHelper.dispose(this.f70127a);
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f70127a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.t
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70127a, bVar, getClass())) {
            a();
        }
    }
}
