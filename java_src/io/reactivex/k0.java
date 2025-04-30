package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
/* compiled from: SingleEmitter.java */
/* loaded from: classes5.dex */
public interface k0<T> {
    boolean a(@NonNull Throwable th);

    void b(@Nullable w2.f fVar);

    void c(@Nullable io.reactivex.disposables.b bVar);

    boolean isDisposed();

    void onError(@NonNull Throwable th);

    void onSuccess(@NonNull T t3);
}
