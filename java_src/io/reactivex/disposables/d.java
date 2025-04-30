package io.reactivex.disposables;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: SerialDisposable.java */
/* loaded from: classes5.dex */
public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<b> f65798a;

    public d() {
        this.f65798a = new AtomicReference<>();
    }

    @Nullable
    public b a() {
        b bVar = this.f65798a.get();
        return bVar == DisposableHelper.DISPOSED ? c.a() : bVar;
    }

    public boolean b(@Nullable b bVar) {
        return DisposableHelper.replace(this.f65798a, bVar);
    }

    public boolean c(@Nullable b bVar) {
        return DisposableHelper.set(this.f65798a, bVar);
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        DisposableHelper.dispose(this.f65798a);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f65798a.get());
    }

    public d(@Nullable b bVar) {
        this.f65798a = new AtomicReference<>(bVar);
    }
}
