package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: DefaultObserver.java */
/* loaded from: classes5.dex */
public abstract class a<T> implements g0<T> {

    /* renamed from: a  reason: collision with root package name */
    private io.reactivex.disposables.b f70125a;

    protected final void a() {
        io.reactivex.disposables.b bVar = this.f70125a;
        this.f70125a = DisposableHelper.DISPOSED;
        bVar.dispose();
    }

    protected void b() {
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (io.reactivex.internal.util.f.e(this.f70125a, bVar, getClass())) {
            this.f70125a = bVar;
            b();
        }
    }
}
