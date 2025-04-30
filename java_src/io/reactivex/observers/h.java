package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ResourceMaybeObserver.java */
/* loaded from: classes5.dex */
public abstract class h<T> implements t<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.b> f70132a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f70133b = new io.reactivex.internal.disposables.b();

    public final void a(@NonNull io.reactivex.disposables.b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "resource is null");
        this.f70133b.b(bVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        if (DisposableHelper.dispose(this.f70132a)) {
            this.f70133b.dispose();
        }
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f70132a.get());
    }

    @Override // io.reactivex.t
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.c(this.f70132a, bVar, getClass())) {
            b();
        }
    }
}
