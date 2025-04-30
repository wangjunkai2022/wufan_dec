package io.reactivex;

import io.reactivex.annotations.NonNull;
/* compiled from: SingleObserver.java */
/* loaded from: classes5.dex */
public interface l0<T> {
    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull io.reactivex.disposables.b bVar);

    void onSuccess(@NonNull T t3);
}
