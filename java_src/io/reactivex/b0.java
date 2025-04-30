package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
/* compiled from: ObservableEmitter.java */
/* loaded from: classes5.dex */
public interface b0<T> extends i<T> {
    boolean a(@NonNull Throwable th);

    void b(@Nullable w2.f fVar);

    void c(@Nullable io.reactivex.disposables.b bVar);

    boolean isDisposed();

    @NonNull
    b0<T> serialize();
}
