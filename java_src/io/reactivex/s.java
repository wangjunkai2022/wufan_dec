package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
/* compiled from: MaybeEmitter.java */
/* loaded from: classes5.dex */
public interface s<T> {
    boolean a(@NonNull Throwable th);

    void b(@Nullable w2.f fVar);

    void c(@Nullable io.reactivex.disposables.b bVar);

    boolean isDisposed();

    void onComplete();

    void onError(@NonNull Throwable th);

    void onSuccess(@NonNull T t3);
}
