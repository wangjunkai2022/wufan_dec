package io.reactivex;

import io.reactivex.annotations.NonNull;
/* compiled from: MaybeObserver.java */
/* loaded from: classes5.dex */
public interface t<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull io.reactivex.disposables.b bVar);

    void onSuccess(@NonNull T t3);
}
