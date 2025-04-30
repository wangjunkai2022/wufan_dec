package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ResourceCompletableObserver.java */
/* loaded from: classes5.dex */
public abstract class g implements io.reactivex.d, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.b> f70130a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f70131b = new io.reactivex.internal.disposables.b();

    public final void a(@NonNull io.reactivex.disposables.b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "resource is null");
        this.f70131b.b(bVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        if (DisposableHelper.dispose(this.f70130a)) {
            this.f70131b.dispose();
        }
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f70130a.get());
    }

    @Override // io.reactivex.d
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70130a, bVar, getClass())) {
            b();
        }
    }
}
