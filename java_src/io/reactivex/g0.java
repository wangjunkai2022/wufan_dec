package io.reactivex;

import io.reactivex.annotations.NonNull;
/* compiled from: Observer.java */
/* loaded from: classes5.dex */
public interface g0<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onNext(@NonNull T t3);

    void onSubscribe(@NonNull io.reactivex.disposables.b bVar);
}
