package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
/* compiled from: FlowableEmitter.java */
/* loaded from: classes5.dex */
public interface l<T> extends i<T> {
    boolean a(@NonNull Throwable th);

    void b(@Nullable w2.f fVar);

    void c(@Nullable io.reactivex.disposables.b bVar);

    long d();

    boolean isCancelled();

    @NonNull
    l<T> serialize();
}
