package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ResourceObserver.java */
/* loaded from: classes5.dex */
public abstract class i<T> implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.b> f70134a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f70135b = new io.reactivex.internal.disposables.b();

    public final void a(@NonNull io.reactivex.disposables.b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "resource is null");
        this.f70135b.b(bVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        if (DisposableHelper.dispose(this.f70134a)) {
            this.f70135b.dispose();
        }
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f70134a.get());
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70134a, bVar, getClass())) {
            b();
        }
    }
}
